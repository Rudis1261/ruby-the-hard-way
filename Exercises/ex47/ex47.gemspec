# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ex47/version'

Gem::Specification.new do |spec|
  spec.name             = "ex47"
  spec.version          = Ex47::VERSION
  spec.authors          = ['Rudi Strydom']
  spec.email            = ['iam@thatguy.co.za']
  spec.summary          = %q{Short summary of your project}
  spec.description      = %q{Longer description of your project}
  spec.homepage         = "https://github.com/drpain/ex47"
  spec.license          = "MIT"

  spec.files            = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
  spec.executables      = ['ex47']
  spec.test_files       = ['tests/test_ex47.rb']
  spec.require_paths    = ["lib"]
end