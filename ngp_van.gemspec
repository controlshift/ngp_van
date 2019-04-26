# encoding: UTF-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngp_van/version'

Gem::Specification.new do |spec|
  spec.authors = ['Christopher Styles']
  spec.cert_chain = ['certs/christopherstyles.pem']
  spec.description = 'An unofficial Ruby wrapper for the NGP VAN API'
  spec.email = ['christopherstyles@gmail.com']
  spec.files = `git ls-files lib spec README.md`.split($INPUT_RECORD_SEPARATOR)
  spec.homepage = 'https://github.com/christopherstyles/ngp_van'
  spec.licenses = ['MIT']
  spec.name = 'ngp_van'
  spec.platform = Gem::Platform::RUBY
  spec.require_paths = %w(lib)
  spec.required_ruby_version = '>= 2.1.0'
  if $PROGRAM_NAME.end_with?('gem')
    spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end
  spec.summary = 'Ruby wrapper for the NGP VAN API'
  spec.version = NgpVan::VERSION.dup

  spec.add_dependency 'faraday', '>= 0.9.2', '< 1.0'
  spec.add_dependency 'faraday_middleware', '>= 0.10.0', '< 1.0'

  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0'
  spec.add_development_dependency 'faker', '~> 1.6'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 1.22'
  spec.add_development_dependency 'faraday-detailed_logger', '~> 2.1'
end
