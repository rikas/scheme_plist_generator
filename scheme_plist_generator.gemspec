lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'scheme_plist_generator/version'

Gem::Specification.new do |spec|
  spec.name          = 'scheme_plist_generator'
  spec.version       = SchemePlistGenerator::VERSION
  spec.authors       = ['Ricardo Otero']
  spec.email         = ['oterosantos@gmail.com']

  spec.summary       = 'Simple gem to generate the scheme plist xml to use on iOS 9+'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rikas/scheme_plist_generator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.37'
end
