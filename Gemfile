source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.0'

gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'

gem 'uglifier'
gem 'carrierwave', '~> 2.0'
gem 'rmagick'
gem 'fog-aws'

gem 'mailjet'
gem 'dotenv-rails'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'pry-rails'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.3", require: false
end

