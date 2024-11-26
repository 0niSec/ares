Gem::Specification.new do |s|
  s.name        = "ares"
  s.version     = "0.1.0"
  s.summary     = "Something will go here"
  s.description = "Some description"
  s.authors     = ["0niSec"]
  s.files       = ["lib/ares.rb", *%w[Gemfile LICENSE Rakefile README.md], *Dir['{lib,spec}/**/*.rb', 'bin/*'] ]
  s.homepage    =
    "https://rubygems.org/gems/ares"
  s.license       = "MIT"
  s.executable << "ares"

  s.add_dependency 'paint', '~> 2.3.0'
end