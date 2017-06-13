# -*- encoding: utf-8 -*-
# stub: rubysl-syslog 2.1.0 ruby lib
# stub: lib/rubysl/syslog/extconf.rb

Gem::Specification.new do |s|
  s.name = "rubysl-syslog".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2014-11-20"
  s.description = "Ruby standard library syslog.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.extensions = ["lib/rubysl/syslog/extconf.rb".freeze]
  s.files = ["lib/rubysl/syslog/extconf.rb".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-syslog".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Ruby standard library syslog.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<ffi2-generators>.freeze, ["~> 0.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
  end
end
