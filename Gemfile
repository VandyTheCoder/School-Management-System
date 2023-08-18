source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.9'

gem 'rails',                        '5.2.6'
gem 'pg',                           '0.21'
gem 'puma',                         '~> 3.7'
gem 'sass-rails',                   '~> 5.0'
gem 'uglifier',                     '>= 1.3.0'
gem 'coffee-rails',                 '~> 4.2'
gem 'turbolinks',                   '~> 5'
gem 'jbuilder',                     '~> 2.5'
gem 'simple_form',                  '~> 4.1'
gem 'haml-rails',                   '~> 1.0'
gem 'jquery-rails',                 '~> 4.3'
gem 'carrierwave',                  '~> 2.2', '>= 2.2.2'
gem 'devise',                       '~> 4.3'
gem 'font-awesome-sass'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

group :development, :test do
  gem 'byebug',                     platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails',                  '~> 0.3.9'
end

group :development do
  gem 'web-console',                '>= 3.3.0'
  gem 'listen',                     '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',      '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
