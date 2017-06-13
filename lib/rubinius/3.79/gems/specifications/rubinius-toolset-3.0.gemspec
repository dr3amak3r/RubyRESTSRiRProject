# -*- encoding: utf-8 -*-
# stub: rubinius-toolset 3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-toolset".freeze
  s.version = "3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2016-01-29"
  s.description = "Rubinius::ToolSet provides a registry for code tools. These include\nthe Rubinius bytecode compiler and parser. These, in turn, depend on\nother components like the AST and bytecode emitter and serializer.\n\nToolSets provide a mechanism for other languages to reuse as much of\nthe Rubinius code tools as are suitable for that language.\n".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-code".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "A registry for Rubinius code tools".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rubinius-bridge>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rubinius-bridge>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rubinius-bridge>.freeze, ["~> 1.0"])
  end
end
