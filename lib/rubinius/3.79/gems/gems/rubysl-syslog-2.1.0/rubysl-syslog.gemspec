# coding: utf-8
require './lib/rubysl/syslog/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-syslog"
  spec.version       = RubySL::Syslog::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library syslog.}
  spec.summary       = %q{Ruby standard library syslog.}
  spec.homepage      = "https://github.com/rubysl/rubysl-syslog"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["lib/rubysl/syslog/extconf.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_runtime_dependency "ffi2-generators", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-prettyprint", "~> 2.0"
end
