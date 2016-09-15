source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use Postgres DB
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# use haml templating
gem 'haml-rails'

# use Puma web server
gem 'puma'

# authentication gems
gem 'devise'
gem 'omniauth-facebook'

# Image Upload and management
gem 'carrierwave'
gem 'rmagick'

group :development, :test do
  # Load environment variables
  gem 'dotenv-rails'
  # Call "byebug" anywhere in the code
  gem 'byebug'
  # Use rspec for testing
  gem 'rspec-rails', '~> 3.4'
end

group :development do
  # Follow style guides
  gem 'rubocop'
  gem 'haml-lint'
  gem 'scss_lint', require: false
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Enable meta capture for Rails Panel
  gem 'meta_request'
  # Keeping your application running in the background.
  gem 'spring'

  # tidy up console output
  gem 'awesome_print', require: 'ap'

  # better error output
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'rails_12factor'
end
