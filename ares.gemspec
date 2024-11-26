Gem::Specification.new do |s|
  s.name        = "ares"
  s.version     = "0.1.0"
  s.summary     = "Something will go here"
  s.description = "Some description"
  s.authors     = ["0niSec"]
  s.files       = ["lib/ares.rb", *%w[Gemfile README.md], *Dir['{lib,spec}/**/*.rb', 'bin/*'] ]
  s.homepage    =
    "https://rubygems.org/gems/ares"
  s.required_ruby_version = '>= 3.0'
  s.license       = "MIT"
  s.executables << "ares"

  s.add_dependency 'paint', '~> 2.3.0'
  s.add_dependency 'thor', '~> 1.3'
end