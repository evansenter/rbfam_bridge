# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbfam_bridge/version'

Gem::Specification.new do |spec|
  spec.name          = "rbfam_bridge"
  spec.version       = RbfamBridge::VERSION
  spec.authors       = ["Evan Senter"]
  spec.email         = ["evansenter@gmail.com"]
  spec.summary       = %q{Rbfam (╯°□°）╯︵ ┻━┻ Wrnap}
  spec.description   = %q{A bridge for the Rbfam gem that allows the sequences from Rbfam to be converted to Wrnap objects.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.required_ruby_version = ">= 2.0"

  spec.add_development_dependency "awesome_print", "~> 1.2"
  spec.add_development_dependency "bundler",       "~> 1.7"
  spec.add_development_dependency "gem-release",   "~> 0.7"
  spec.add_development_dependency "rake",          "~> 10.4"
    
  spec.add_runtime_dependency "rbfam", "~> 12.0", ">= 12.0.0"
  spec.add_runtime_dependency "wrnap", "~> 1.2", ">= 1.2.2"
end
