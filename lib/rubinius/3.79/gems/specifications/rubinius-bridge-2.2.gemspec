# -*- encoding: utf-8 -*-
# stub: rubinius-bridge 2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-bridge".freeze
  s.version = "2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2016-04-06"
  s.description = "Classes and methods to run other Rubinius tools under MRI.\n\nRubinius needs to bootstrap building its core library and code tools\nbecause they are written in Ruby. One way to do this is to run the\ncode tools under MRI. To do so requires adding some classes and methods\nthat are built into Rubinius.\n".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-bridge".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Classes and methods to run other Rubinius tools under MRI.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redcard>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<redcard>.freeze, ["~> 1.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<redcard>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
