source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

#gem 'rake', '0.9.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  #gem 'therubyracer'
  gem 'execjs'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# MongoDB specifics
gem "mongoid", "~> 2.2"    
#gem "bson", "= 1.4.1", :path => "vendor"
gem "mongo", "~> 1.5.0.rc0"
gem "bson", "~> 1.5.0.rc0"
gem "bson_ext", "~> 1.5.0.rc0"  

#HAML GEMS
gem 'haml'
gem 'haml-rails', :group => :development
gem 'simple_form'

#AUTHENTICATION GEM
gem 'devise'

#FILE UPLOAD
gem "mongoid-paperclip", :require => "mongoid_paperclip"
gem "aws-s3",            :require => "aws/s3"

#CLIENT SIDE VALIDATIONS
gem "client_side_validations", "~> 3.2.0.beta.1"
gem 'client_side_validations-mongoid'

#TESTING GEMS
group :development, :test do
  gem 'database_cleaner'
  gem 'rails3-generators' #mainly for factory_girl & simple_form at this point
  gem 'rspec-rails'
  gem 'factory_girl_rails', :require => false
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'mongoid-rspec'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
