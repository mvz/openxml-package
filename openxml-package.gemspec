# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "openxml-package/version"

Gem::Specification.new do |spec|
  spec.name          = "openxml-package"
  spec.version       = OpenXmlPackage::VERSION
  spec.authors       = ["Bob Lail"]
  spec.email         = ["bob.lailfamily@gmail.com"]

  spec.summary       = %q{A Ruby implementation of OpenXmlPackage from Microsoft's Open XML SDK}
  spec.description   = %q{A Ruby implementation of OpenXmlPackage from Microsoft's Open XML SDK}
  spec.homepage      = "https://github.com/openxml/openxml-package"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.4.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyzip", "~> 2.3"
  spec.add_dependency "nokogiri"
  spec.add_dependency "ox"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "minitest-reporters-turn_reporter"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rr", "~> 3.0.8"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "shoulda-context"

end
