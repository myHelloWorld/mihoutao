source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'execjs'
#20Jan13 start, michael
#error with 0.11.0, fix to 0.10.2 
#The Ruby Racer requires libv8 ~> 3.11.8
#gem 'therubyracer', '~>0.11.0'

gem 'therubyracer', '0.10.2'
#20Jan13 End


gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
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
# gem 'debugger'

#https://github.com/jnicklas/carrierwave
gem 'carrierwave'
gem 'rmagick'

#21Jan13 michael, support mysql in production
group :production do
  gem 'mysql2', '~> 0.3.11'
end
#http://gembundler.com/rationale.html
#http://rubygems.org/gems/mysql2
#http://stackoverflow.com/questions/9609985/please-install-mysql-adapter-gem-install-activerecord-mysql-adapter
#21Jan13 end
