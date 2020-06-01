require 'hiklas/pingpong'

use Rack::ShowExceptions
run Hiklas::PingPong::WebSocketHandler.new
