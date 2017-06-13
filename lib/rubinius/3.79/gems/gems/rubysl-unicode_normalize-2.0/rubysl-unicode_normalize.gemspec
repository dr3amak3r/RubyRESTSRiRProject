# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubysl/unicode_normalize/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-unicode_normalize"
  spec.version       = Rubysl::UnicodeNormalize::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]

  spec.summary       = %q{Ruby standard library unicode_normalize.}
  spec.description   = %q{Ruby standard library unicode_normalize.}
  spec.homepage      = "https://github.com/rubysl/rubysl-unicode_normalize"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.8"
end
