source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'activerecord-postgis-adapter'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'

group :development, :test do
  gem 'awesome_print'
  gem 'bullet'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.77.0', require: false
  gem 'rubocop-faker', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'annotate'
  gem 'listen'
  gem 'meta_request'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'webmock'
end
