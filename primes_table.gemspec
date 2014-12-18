# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes_table/version'

Gem::Specification.new do |spec|
  spec.name          = "primes_table"
  spec.version       = PrimesTable::VERSION
  spec.authors       = ["Jonathan Hernandez"]
  spec.email         = ["jbilbo@gmail.com"]
  spec.summary       = %q{Multiplication table for prime numbers}
  spec.description   = %q{Prints in screen a multiplication table for n prime numbers}
  spec.homepage      = ""
  spec.license       = "apache"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_dependency('methadone', '~> 1.8.0')
  spec.add_dependency('terminal-table', '~> 1.4.3')
end
