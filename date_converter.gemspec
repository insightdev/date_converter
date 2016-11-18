# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_converter/version'

Gem::Specification.new do |spec|
  spec.name          = "date_converter"
  spec.version       = DateConverter::VERSION
  spec.authors       = ["Alex Balgavy"]
  spec.email         = ["a.balgavy@gmail.com"]

  spec.summary       = %q{Functions for data format conversions.}
  spec.description   = %q{A library with many commonly-used date conversion functions.}
  spec.homepage      = "https://github.com/insightdev/date_converter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
