source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors', '~> 1.0', '>= 1.0.2'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end


gem 'active_model_serializers', '~> 0.10.9'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', '~> 3.14', '>= 3.14.1'
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.1'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rbenv', '~> 2.2'
  gem "capistrano-yarn"
  gem 'capistrano-ssh-doctor', git: 'https://github.com/capistrano-plugins/capistrano-ssh-doctor.git'
  gem 'capistrano-safe-deploy-to', '~> 1.1', '>= 1.1.1'

  
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
