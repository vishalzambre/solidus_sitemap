# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_sitemap/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_sitemap'
  s.version     = SolidusSitemap.version
  s.summary     = 'Provides a sitemap file for Solidus'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.author            = 'Stembolt'
  s.email             = 'contact@stembolt.com'
  s.homepage          = 'https://github.com/StemboltHQ/solidus_sitemap'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'solidus_core', '> 0.0.0'
  s.add_runtime_dependency 'sitemap_generator', '~> 6.0.1'

  s.add_development_dependency 'database_cleaner', '~> 1.4.0'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 3.2.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'coffee-script', '~> 2.4.1'
end
