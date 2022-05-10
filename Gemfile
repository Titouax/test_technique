# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.read("#{__dir__}/.ruby-version").chomp

gem 'active_link_to'
gem 'bootsnap', require: false
gem 'bootstrap'
gem 'devise'
gem 'devise-i18n'
gem 'importmap-rails'
gem 'puma'
gem 'pundit'
gem 'rack-cors'
gem 'rails', '~> 7'
gem 'redis', '~> 4.0'
gem 'sassc-rails'
gem 'sidekiq'
gem 'sprockets-rails'
gem 'sqlite3'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'bullet'
  gem 'web-console'

  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara'
  gem 'webdrivers'

  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
