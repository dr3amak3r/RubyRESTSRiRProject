# coding: utf-8
require './lib/rubysl/monitor/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-monitor"
  spec.version       = RubySL::Monitor::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library Monitor.}
  spec.summary       = %q{Ruby standard library Monitor.}
  spec.homepage      = "https://github.com/rubysl/rubysl-monitor"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
end
