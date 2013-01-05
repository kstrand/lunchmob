source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'thin'

group :production do 
	gem 'pg'
end

group :development, :test do
 gem 'rspec-rails', '2.11.0'
 gem 'sqlite3'
 gem 'quiet_assets'
 gem 'guard-rspec', '1.2.1'
 gem 'guard-spork', '1.2.0'
 gem 'spork', '0.9.2'
end

gem 'rails-admin'
gem 'twilio-ruby'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'zurb-foundation'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'rspec-rails', '2.11.0'
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl', '1.0.3'
end

