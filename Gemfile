source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version").strip

group :development, :test do
  gem "pry", "~> 0.14"
  gem "pry-byebug", "~>3.10"
  gem "standard", "~> 1.9"
end

group :test do
  gem "rspec", "~> 3.12"
end
