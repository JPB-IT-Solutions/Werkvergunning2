source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.13', '< 0.5'
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

gem 'bootstrap-sass'
#gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'autoprefixer-rails'
gem 'sprockets-rails'

#gebruikersauthenticatie
gem 'devise'

#gebruikersrollen
gem 'cancancan', '~> 1.10'

#mailfunctie
gem 'mail'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#voor het gebruik van find_all_by_measurementtype in het formulier. Is een methode uit rails 3, vandaar deprecated.
gem 'activerecord-deprecated_finders', require: 'active_record/deprecated_finders'

#voor het printen naar PDF
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'

#voor het opdelen van de tabel op index.html.erb in meerdere pagina's: will_paginate

#zoekfunctie en sorteerfunctie
gem "wice_grid", '3.6.0.pre4'
gem 'font-awesome-sass',  '~> 4.3'
#oudere versie van meta_request, anders werkt edit e.d. niet!
gem "meta_request",       "0.2.5"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #gem voor mysql admin: rails_admin https://github.com/sferik/rails_admin

  gem 'rails_admin'

  #voor het debuggen in Chrome met RailsPanel
  #gem 'meta_request'
  gem 'better_errors'
end

