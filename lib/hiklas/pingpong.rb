require 'websocket/driver'
require 'eventmachine'


module Hiklas
  module PingPong


    class WebSocketHandler
      attr_reader :env, :url

      def initialize(env)
        @env = env

        secure = Rack::Request.new(env).ssl?
        scheme = secure ? 'wss:' : 'ws:'
        @url = scheme + '//' + env['HTTP_HOST'] + env['REQUEST_URI']

        @driver = WebSocket::Driver.rack(self)

        env['rack.hijack'].call
        @io = env['rack.hijack_io']

        EM.attach(@io, Reader) { |conn| conn.driver = @driver }

        @driver.start
      end

      def write(string)
        @io.write(string)
      end

      module Reader
        attr_writer :driver

        def receive_data(string)
          @driver.parse(string)
        end
      end
    end
    
  end
end
