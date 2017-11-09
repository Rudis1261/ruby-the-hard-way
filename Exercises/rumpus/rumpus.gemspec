# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rumpus/version'

Gem::Specification.new do |spec|
  spec.name             =  "rumpus"
  spec.version          = Rumpus::VERSION
  spec.authors          = ['Rudi Strydom']
  spec.email            = ['iam@thatguy.co.za']
  spec.summary          = %q{Short summary of your project}
  spec.description      = %q{Longer description of your project}
  spec.homepage         = "https://github.com/drpain/rumpus"
  spec.license          = "MIT"

  spec.files            = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
  spec.executables      = ['rumpus']
  spec.test_files       = ['tests/test_rumpus.rb']
  spec.require_paths    = ["lib"]

  spec.add_dependency('rake', [">= 10.0.0"])
end