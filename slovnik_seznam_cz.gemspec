lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slovnik_seznam_cz/version'

Gem::Specification.new do |spec|
  spec.name          = 'slovnik_seznam_cz'
  spec.version       = SlovnikSeznamCz::VERSION
  spec.authors       = ['Glutexo']
  spec.email         = ['glutexo@icloud.com']

  spec.summary       = 'slovnik.seznam.cz tool'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.add_runtime_dependency('nokogiri', '~> 1.8.4')
end
