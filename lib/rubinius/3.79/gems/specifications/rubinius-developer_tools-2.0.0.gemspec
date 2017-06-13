# -*- encoding: utf-8 -*-
# stub: rubinius-developer_tools 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-developer_tools".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2013-10-15"
  s.description = "A meta-gem for the Rubinius developer components like the debugger, profiler, coverage tool, etc.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "http://rubini.us".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "A meta-gem for the Rubinius developer tools.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubinius-debugger>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubinius-coverage>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubinius-profiler>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<rubinius-debugger>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubinius-coverage>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubinius-profiler>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rubinius-debugger>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubinius-coverage>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubinius-profiler>.freeze, ["~> 2.0"])
  end
end
