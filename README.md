## Overview 

Simple test of WebSockets with Ruby 


## Quick Start

### Install Bundler

Setup path for ruby gems

```
export USER_GEMS=`gem env | grep USER | sed -e 's/^.*\(\/home.*\)$/\1/'`
export PATH=$PATH:$USER_GEMS/bin
```

Install bundler

```
gem install bundler --user-install

```

Install dependencies for this project 

```
bundle install --path vendor
```



## References

### Ruby

* [Faye Project WebSocket drive](https://github.com/faye/websocket-driver-ruby)
* [Ruby Rack](https://github.com/rack/rack)
* [Event Machine](http://rubyeventmachine.com)
* [Gem patterns](https://guides.rubygems.org/patterns/)
* [Rack spec](https://github.com/rack/rack/blob/master/SPEC.rdoc)
* [Websocket Driver new release](https://blog.jcoglan.com/2013/05/06/websocket-driver-an-io-agnostic-websocket-module-or-why-most-protocol-libraries-arent/)
* [Event machine Connection class](https://github.com/eventmachine/eventmachine/blob/master/lib/em/connection.rb)


### Metrics

* [collectd](https://collectd.org)
* [Ruby collectd](https://github.com/superfeedr/ruby-collectd)


