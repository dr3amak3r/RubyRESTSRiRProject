# coding: utf-8
require './lib/rubysl/open-uri/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-open-uri"
  spec.version       = RubySL::OpenURI::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library uri.}
  spec.summary       = %q{Ruby standard library uri.}
  spec.homepage      = "https://github.com/rubysl/rubysl-open-uri"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
end
