source 'https://rubygems.org'

gem 'soloist', require: false

group :development do
  gem 'foodcritic', '< 7.0.0', require: false # foodcritic >=7.0.0 drops support for ruby v2.0.0
  gem 'rake', require: false
  gem 'rspec', require: false
  gem 'rubocop', require: false
  gem 'chefspec', '< 5.0.0', require: false # >=5.0.0 requires ruby v2.1
end

# Temporarily lock these gems. Newer versions depend on Ruby >= 2.1.0
# Remove this once https://github.com/mkocher/soloist/issues/39 is closed
gem 'chef', require: false
gem 'chef-zero', require: false
