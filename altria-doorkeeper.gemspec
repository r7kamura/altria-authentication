lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "altria/doorkeeper/version"

Gem::Specification.new do |spec|
  spec.name          = "altria-doorkeeper"
  spec.version       = Altria::Doorkeeper::VERSION
  spec.authors       = ["Ryo Nakamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Altria authentication plugin"
  spec.homepage      = "https://github.com/r7kamura/altria-doorkeeper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "doorkeeper"
  spec.add_dependency "devise", "3.0.0.rc"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
