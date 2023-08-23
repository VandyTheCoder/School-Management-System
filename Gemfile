source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '3.0.3'

gem 'rails',                              '6.1.7.4'
gem 'pg',                                 '~> 1.5', '>= 1.5.3'
gem 'puma',                               '~> 6.3', '>= 6.3.1'
gem 'sass-rails',                         '~> 6.0'
gem 'uglifier',                           '~> 4.2'
gem 'coffee-rails',                       '~> 5.0'
gem 'turbolinks',                         '~> 5.2', '>= 5.2.1'
gem 'jbuilder',                           '~> 2.5'
gem 'simple_form',                        '~> 5.2'
gem 'haml-rails',                         '~> 2.1'
gem 'jquery-rails',                       '~> 4.6'
gem 'carrierwave',                        '~> 3.0', '>= 3.0.3'
gem 'devise',                             '~> 4.9', '>= 4.9.2'
gem 'font-awesome-sass',                  '~> 6.4', '>= 6.4.2'
gem 'bootstrap3-datetimepicker-rails',    '~> 4.17', '>= 4.17.47'
gem 'nokogiri',                           '~> 1.15', '>= 1.15.4'

group :development, :test do
  gem 'byebug',                     platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails',                  '~> 0.3.9'
end

group :development do
  gem 'web-console',                '~> 4.2'
  gem 'listen',                     '~> 3.8'
  gem 'spring'
  gem 'spring-watcher-listen',      '~> 2.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
