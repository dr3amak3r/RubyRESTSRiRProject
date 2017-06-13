# -*- encoding: utf-8 -*-
# stub: rubinius-compiler 3.10 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-compiler".freeze
  s.version = "3.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2016-08-09"
  s.description = "A Bytecode compiler for the Rubinius language platform.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-code".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "A Bytecode compiler for the Rubinius language platform.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
