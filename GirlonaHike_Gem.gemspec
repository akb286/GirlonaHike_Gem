
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "GirlonaHike_Gem/version"

Gem::Specification.new do |spec|
  spec.name          = "GirlonaHike_Gem"
  spec.version       = GirlonaHikeGem::VERSION
  spec.authors       = ["Alicia Baker"]
  spec.email         = ["aliciabaker314@gmail.com"]

  spec.summary       = "Useless string helpers"
  spec.description   = "This is a longer description of my useless string helpers"
  spec.homepage      = "https://github.com/akb286/GirlonaHike_Gem"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
