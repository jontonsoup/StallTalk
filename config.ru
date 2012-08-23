require ::File.expand_path('../config/environment',  __FILE__)

require ‘resque/server’
run Rack::URLMap.new \
“/resque” => Resque::Server.new

use Rack::Deflater
run Stalltalk::Application
