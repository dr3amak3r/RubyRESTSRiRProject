# -*- encoding: utf-8 -*-
# stub: rubysl-socket 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rubysl-socket".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze, "Yorick Peterse".freeze]
  s.date = "2017-02-09"
  s.description = "Socket standard library for Rubinius.".freeze
  s.email = ["brixen@gmail.com".freeze, "yorickpeterse@gmail.com".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-socket".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Socket standard library for Rubinius.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubysl-fcntl>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.9"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rubysl-ipaddr>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<rubysl-fcntl>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.9"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-ipaddr>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rubysl-fcntl>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.9"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-ipaddr>.freeze, ["~> 2.0"])
  end
end
