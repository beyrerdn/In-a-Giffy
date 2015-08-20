source 'https://rubygems.org'
  ruby '2.2.1'

  gem 'rails', '4.2.3'
  gem 'bootstrap-sass', '~> 3.3.5'
  gem 'bootstrap_form'
  gem 'devise'
  gem 'kaminari'
  gem 'acts_as_votable', '~> 0.10.0'
  gem 'pg'
  gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

  gem "refile", require: "refile/rails"
  gem "refile-mini_magick"
  gem 'remotipart', '~> 1.2'
  gem 'refile-s3'
  gem 'figaro'

  group :production do
    gem 'rails_12factor'
  end


  group :test do
    gem 'shoulda'
    gem 'factory_girl_rails'
    gem 'simplecov', :require => false
    gem 'capybara'
    gem 'poltergeist', require: 'capybara/poltergeist'
  end

  gem 'sass-rails', '~> 5.0'

  gem 'uglifier', '>= 1.3.0'

  gem 'coffee-rails', '~> 4.1.0'

  gem 'jquery-rails'

  gem 'turbolinks'

  gem 'jbuilder', '~> 2.0'

  gem 'sdoc', '~> 0.4.0', group: :doc


group :development, :test do
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
