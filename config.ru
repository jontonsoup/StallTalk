require ::File.expand_path('../config/environment',  __FILE__)


“/resque” => Resque::Server.new

use Rack::Deflater
run Stalltalk::Application
