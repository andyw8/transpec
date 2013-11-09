# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transpec/version'

Gem::Specification.new do |spec|
  spec.name          = 'transpec'
  spec.version       = Transpec::Version.to_s
  spec.authors       = ['Yuji Nakayama']
  spec.email         = ['nkymyj@gmail.com']
  spec.summary       = 'A RSpec syntax converter'
  spec.description   = 'Transpec converts your specs into the latest RSpec syntax ' +
                       'with static and dynamic code analysis.'
  spec.homepage      = 'https://github.com/yujinakayama/transpec'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'parser',  '~> 2.0'
  spec.add_runtime_dependency 'rspec',   '~> 2.14'
  spec.add_runtime_dependency 'bundler', '~> 1.3'
  spec.add_runtime_dependency 'rainbow', '~> 1.1'

  spec.add_development_dependency 'rake',          '~> 10.1'
  spec.add_development_dependency 'simplecov',     '~> 0.7'
  spec.add_development_dependency 'rubocop',       '~> 0.10'
  spec.add_development_dependency 'guard-rspec',   '~> 4.0'
  spec.add_development_dependency 'guard-rubocop', '~> 1.0'
  spec.add_development_dependency 'guard-shell',   '~> 0.5'
  spec.add_development_dependency 'ruby_gntp',     '~> 0.3'
end
