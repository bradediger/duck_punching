# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'duck_punching/version'

Gem::Specification.new do |spec|
  spec.name          = "duck_punching"
  spec.version       = DuckPunching::VERSION
  spec.authors       = ["Brad Ediger"]
  spec.email         = ["brad.ediger@madriska.com"]
  spec.description   = %q{
    Ever wanted to monkey patch some Ruby code but hate the name "monkey
    patching"? Have no fear, "duck_punching" will serve up a handy list of
    synonyms.

    Not responsible for accidental euphemistic implications.
  }
  spec.summary       = %q{Generates alternative names for "monkey patching" or "duck punching"}
  spec.homepage      = "http://rubygems.org/gems/duck_punching"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'linguistics'
  spec.add_dependency 'wordnet'
  spec.add_dependency 'wordnet-defaultdb'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
