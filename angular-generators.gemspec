# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "angular-generators"
  spec.version       = "0.0.1"
  spec.authors       = ["chandra"]
  spec.email         = ["demonchand@gmail.com"]
  spec.summary       = "Nothing"
  spec.description   = "Bothing"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files        = Dir["{lib}/**/*", "[A-Z]*"]
  spec.require_path = "lib"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
