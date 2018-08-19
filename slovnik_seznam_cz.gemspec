require_relative 'lib/slovnik_seznam_cz'

Gem::Specification.new do |spec|
  spec.name          = 'slovnik_seznam_cz'
  spec.version       = SlovnikSeznamCz::VERSION
  spec.authors       = ['Glutexo']
  spec.email         = ['glutexo@icloud.com']
  spec.homepage      = 'https://github.com/Glutexo/slovnik_seznam_cz'

  spec.summary       = 'slovnik.seznam.cz tool'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.require_paths = ['lib']
  spec.executables   = ['slovnik']

  spec.add_runtime_dependency('nokogiri', '~> 1.8')
end
