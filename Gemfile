ruby '2.6.1'

source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'puma'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'jikan.rb'
gem 'rest-client'
gem 'json'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

# group :development do
#    gem 'sqlite3'
# end

group :production do
   gem 'pg', '~> 0.21'
   gem 'activerecord-postgresql-adapter'
end