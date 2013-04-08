source 'https://rubygems.org'

gem 'rails', '4.0.0.beta1'
gem 'pg'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

# # Gems used only for assets and not required
# # in production environments by default.
# group :assets do
#   gem 'sass-rails',   '~> 3.2.3'
#   gem 'coffee-rails', '~> 3.2.1'
#
#   # See https://github.com/sstephenson/execjs#readme for more supported runtimes
#   # gem 'therubyracer', :platforms => :ruby
#
#   gem 'uglifier', '>= 1.0.3'
# end
#
# gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'
gem "postmark-rails"
gem "capistrano"
gem 'tire'
gem 'will_paginate'


group :development do
  gem "pry"
  gem "thin"
  gem "quiet_assets"
  gem "fdoc"
end

group :development, :test do
  gem "rspec-rails", "~> 2.13.0"
  gem "fabrication"
  gem "brakeman"
  gem "metric_fu"
  gem "konacha"
end

group :test do
  gem "cucumber-rails", require: false
  gem "capybara"
  gem "database_cleaner"
  gem "faker"
  gem "timecop"
  gem "launchy"
end