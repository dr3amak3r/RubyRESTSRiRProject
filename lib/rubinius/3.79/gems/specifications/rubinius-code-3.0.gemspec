# -*- encoding: utf-8 -*-
# stub: rubinius-code 3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-code".freeze
  s.version = "3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2016-01-29"
  s.description = "A suite of tools for working with code on the Rubinius language platform.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-code".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "A suite of tools for working with code on the Rubinius language platform.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubinius-ast>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rubinius-compiler>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rubinius-instructions>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rubinius-melbourne>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rubinius-processor>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<rubinius-toolset>.freeze, ["~> 3"])
    else
      s.add_dependency(%q<rubinius-ast>.freeze, ["~> 3"])
      s.add_dependency(%q<rubinius-compiler>.freeze, ["~> 3"])
      s.add_dependency(%q<rubinius-instructions>.freeze, ["~> 3"])
      s.add_dependency(%q<rubinius-melbourne>.freeze, ["~> 3"])
      s.add_dependency(%q<rubinius-processor>.freeze, ["~> 3"])
      s.add_dependency(%q<rubinius-toolset>.freeze, ["~> 3"])
    end
  else
    s.add_dependency(%q<rubinius-ast>.freeze, ["~> 3"])
    s.add_dependency(%q<rubinius-compiler>.freeze, ["~> 3"])
    s.add_dependency(%q<rubinius-instructions>.freeze, ["~> 3"])
    s.add_dependency(%q<rubinius-melbourne>.freeze, ["~> 3"])
    s.add_dependency(%q<rubinius-processor>.freeze, ["~> 3"])
    s.add_dependency(%q<rubinius-toolset>.freeze, ["~> 3"])
  end
end
