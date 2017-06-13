# -*- encoding: utf-8 -*-
# stub: rubysl-fcntl 2.0.4 ruby lib
# stub: lib/rubysl/fcntl/extconf.rb

Gem::Specification.new do |s|
  s.name = "rubysl-fcntl".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2013-09-26"
  s.description = "Ruby standard library fcntl.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.extensions = ["lib/rubysl/fcntl/extconf.rb".freeze]
  s.files = ["lib/rubysl/fcntl/extconf.rb".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-fcntl".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Ruby standard library fcntl.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
  end
end
