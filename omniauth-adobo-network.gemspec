lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "omniauth-adobo-network/version"

Gem::Specification.new do |gem|
  gem.add_dependency "omniauth-oauth2", "~> 1.8.0"

  gem.add_development_dependency "bundler", "~> 2.0"

  gem.authors       = ["Nicu Listana"]
  gem.email         = ["niculistana@gmail.com"]
  gem.description   = "Adobo Network OAuth Strategy based on OmniOAuth OAuth2"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/adobocorp/omniauth-adobo-network"
  gem.licenses      = %w[MIT]

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-adobo-network"
  gem.require_paths = %w[lib]
  gem.version       = OmniAuth::AdoboNetwork::VERSION
end
