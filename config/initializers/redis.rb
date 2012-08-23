ENV["REDISTOGO_URL"] ||= 'redis://redistogo:399438b16bcc825d9eb9e774a3fc4b00@char.redistogo.com:9036/'
uri = URI.parse(ENV["REDISTOGO_URL"])
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
Resque.redis = REDIS