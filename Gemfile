source 'http://rubygems.org'

gem 'rails', '3.1.0.rc6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc.6"
gem 'compass', :git => 'git://github.com/chriseppstein/compass', :branch => 'rails31'

gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'
gem 'indextank'
gem "tanker", "~> 1.1.3"
gem 'will_paginate', '~>3.0.pre4'

gem 'simple_form'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test, :development do
  gem 'turn', :require => false
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  
  gem 'database_cleaner'
  gem 'rails3-generators' #mainly for factory_girl & simple_form at this point
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'cucumber-rails'
  gem 'capybara'
end

group :development do
  gem 'heroku'
  gem 'taps'
  gem "nifty-generators"
end

group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3'
  gem 'pg'
end
