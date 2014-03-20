# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stylespec/version'

Gem::Specification.new do |spec|
  spec.name          = "stylespec"
  spec.version       = Stylespec::VERSION
  spec.authors       = ["Misumi Rize"]
  spec.email         = ["r@ayase-e.li"]
  spec.summary       = %q{RSpec test for CSS}
  spec.description   = %q{RSpec enables you to develop CSS by behavior driven}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "css_parser"
  spec.add_dependency "rspec"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
