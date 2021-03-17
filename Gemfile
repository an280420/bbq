source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.0'

gem 'carrierwave', '~> 2.0'
gem 'devise'
gem 'devise-i18n'
gem 'dotenv-rails'
gem 'fog-aws'
gem 'mailjet'
<<<<<<< HEAD
gem 'dotenv-rails'
gem 'pundit'
=======
gem 'puma', '~> 5.0'
gem 'rails-i18n'
gem 'rmagick'
gem 'uglifier'
gem 'webpacker', '~> 5.0'
>>>>>>> master

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'sqlite3', '~> 1.4'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.3", require: false
  gem 'capistrano-passenger'
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-bundler', '~> 2.0'
end

