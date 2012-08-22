source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'
gem 'mobile-fu', :git => 'git://github.com/benlangfeld/mobile-fu.git'
gem 'thin'
gem 'jquery_mobile_rails', :git => 'https://github.com/hughkelsey/jquery-mobile-rails.git'
gem 'bcrypt-ruby'
gem 'newrelic_rpm'
gem 'resque_mailer'
gem 'resque', :require => "resque/server"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  #comment/uncomment next 3 lines for ruby-debug
  gem 'linecache19', :git => 'git://github.com/mark-moseley/linecache'
  gem 'ruby-debug-base19x', '~> 0.11.30.pre4'
  gem 'ruby-debug19'
  #
  ##### run this to get this working: bundle config build.ruby-debug-base19 --with-ruby-include=$rvm_path/src/ruby-1.9.3-p0/
  #
  #gem 'ruby-debug19'
  #gem 'ruby-debug-base19', :git => 'https://github.com/tribune/ruby-debug-base19.git'
  #gem 'linecache19', :git => 'git@github.com:chuckg/linecache19.git', :branch => "0_5_13/dependencies"
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
