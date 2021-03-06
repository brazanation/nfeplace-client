# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nfedobrasil/version'

Gem::Specification.new do |spec|
  spec.name          = 'nfeplace-client'
  spec.version       = NfedoBrasil::VERSION
  spec.authors       = ['Edson Lima','Paulo Gomes', 'Diogo Tozzi']
  spec.email         = ['dddwebdeveloper@gmail.com', 'pv.gomes89@gmail.com', 'diogo.tozzi@natue.com.br']
  spec.summary       = %q{Gem to interact with NFEPlace SOAP API.}
  spec.description   = %q{Gem to interact with NFEPlace SOAP API. Enables creation, consultation and import of invoices.}
  spec.homepage      = 'https://github.com/natuelabs/nfeplace-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'savon', '~> 2.12.0'

  spec.add_development_dependency 'bundler',                   '~>  1.7'
  spec.add_development_dependency 'rake',                      '~>  10.0'
  spec.add_development_dependency 'rspec',                     '~>  3.2.0'
  spec.add_development_dependency 'simplecov',                 '~>  0.10'
  spec.add_development_dependency 'codeclimate-test-reporter', '~>  0.4.7'
end
