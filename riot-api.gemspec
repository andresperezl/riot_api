# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'riot_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'riot-api'
  spec.version       = RiotAPI::VERSION
  spec.authors       = ['Andres Perez']
  spec.email         = ['andres.a.perezleon@gmail.com']

  spec.summary       = 'Gem to interacts with Riot Games API.'
  spec.homepage      = 'https://github.com/andresperezl/riot_api'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.42'
  spec.add_development_dependency 'byebug', '~> 9.0'

  spec.add_runtime_dependency 'rest-client', '~> 2.0'
end
