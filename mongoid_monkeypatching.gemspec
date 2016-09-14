$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid_monkeypatching/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid_monkeypatching"
  s.version     = MongoidMonkeypathing::VERSION
  s.authors     = ["Guillermo Guerrero"]
  s.email       = ["g.guerrero.bus@gmail.com"]
  s.homepage    = "https://github.com/gguerrerobus/mongoid_monkeypatching"
  s.summary     = "Custom fixes for Mongoid version 5 and higher"
  s.description = "Custom fixes for Mongoid version 5 and higher"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'mongoid', "~> 5.1"

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
