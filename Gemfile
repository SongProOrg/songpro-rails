source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# As of 2023-06-01 GitHub Actions (ubuntu-22.04) only has up to Ruby 3.2.1
ruby "3.2.1"

gem "song_pro"
gem "chord_diagrams"
gem "bootstrap", "~> 5.2"
gem "rails", "~> 7.0.5"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "bootsnap", require: false

group :development, :test do
  gem "capybara"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails", "~> 6.0.0"
  gem "standard"
end

group :development do
  gem "dockerfile-rails", ">= 1.4"
  gem "web-console"
end
