# coding: utf-8
require './lib/rubysl/digest/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-digest"
  spec.version       = RubySL::Digest::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library digest.}
  spec.summary       = %q{Ruby standard library digest.}
  spec.homepage      = "https://github.com/rubysl/rubysl-digest"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["ext/rubysl/digest/extconf.rb",
                        "ext/rubysl/digest/bubblebabble/extconf.rb",
                        "ext/rubysl/digest/md5/extconf.rb",
                        "ext/rubysl/digest/rmd160/extconf.rb",
                        "ext/rubysl/digest/sha1/extconf.rb",
                        "ext/rubysl/digest/sha2/extconf.rb" ]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-prettyprint", "~> 2.0"
end
