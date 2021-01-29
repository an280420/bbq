source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.0'

gem 'devise'
gem 'devise-i18n'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'

gem 'uglifier'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'pry-rails'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
