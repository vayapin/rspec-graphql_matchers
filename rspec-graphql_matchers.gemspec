# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/graphql_matchers/version'

Gem::Specification.new do |spec|
  spec.name = 'rspec-graphql_matchers'
  spec.version = Rspec::GraphqlMatchers::VERSION
  spec.authors = ['Samuel Brandão']
  spec.email = ['gb.samuel@gmail.com']

  spec.summary = 'Collection of rspec matchers to test your graphQL api schema.'
  spec.homepage = 'https://github.com/khamusa/rspec-graphql_matchers'
  spec.license = 'MIT'

  spec.files =
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'graphql', '~> 2.3'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  # CodeClimate does not yet support SimpleCov 0.18
  spec.add_development_dependency 'simplecov', '~> 0.22.0'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_development_dependency 'rubocop', '~> 1.65'
end
