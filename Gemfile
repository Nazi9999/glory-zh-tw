source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.9'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
group :development do
  gem 'meta_request'
  gem 'venus', '~> 0.8.6'
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm'
  gem 'capistrano-precompile-on-local'
  gem 'capistrano-rails-tail-log'
end

# for code analyize
group :development do
  gem 'pre-commit', require: false
  gem 'rubocop'
end

# for db
group :development do
  gem 'mysql2'
  gem 'annotate', '>=2.6.0'
  gem 'connection_ninja', '~> 0.4.1'
end

gem 'pg'
# for test
group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'turn', '~> 0.8.3', require: false
  gem 'minitest', '~> 5.6.1'
  gem 'rspec-given'
  gem 'database_cleaner'
  gem 'vcr'
end

# for debug
group :development, :test do
  gem 'awesome_print', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'xray-rails'
  gem 'hirb', require: false
  gem 'hirb-unicode', require: false
end

# assets
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'slim-rails'
gem 'slim'
gem 'font-awesome-rails'
gem 'less-rails'
gem 'twitter-bootstrap-rails', git: 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'haml'
gem 'jquery-ui-rails', '~> 4.0.3'
gem 'chosen-rails', '~> 0.9.15'
gem 'anjlab-bootstrap-rails', '>= 2.3', require: 'bootstrap-rails'

# for aws
gem 'aws-sdk'
gem 'carrierwave', '~> 0.10.0'
gem 'carrierwave-meta', '~> 0.0.5'

# for utilities
gem 'ransack'
gem 'rails-i18n', '~> 4.0.0'
gem 'jbuilder', '~> 1.2'
gem 'active_model_serializers'
# Embed the V8 JavaScript interpreter into Ruby
gem 'therubyracer', '~> 0.12.1'
gem 'paper_trail', '~> 3.0.6'
gem 'differ', '~> 0.1.2'
gem 'simple_form', '~> 3.0.2'
gem 'nested_form'
gem 'crummy', '~> 1.8.0'
gem 'settingslogic'
gem 'mini_magick', '~> 3.8.0'
gem 'fog', '~> 1.25.0'
gem 'kaminari'
gem 'whenever'
gem 'devise', '~> 3.2.4'
gem 'tinymce-rails'
gem 'tinymce-rails-imageupload', '~> 4.0.0.beta'
