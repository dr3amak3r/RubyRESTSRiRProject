# -*- encoding: utf-8 -*-
# stub: rubinius-profiler 2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rubinius-profiler".freeze
  s.version = "2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2016-05-08"
  s.description = "Rubinius profiler.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-profiler".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Rubinius profiler.".freeze

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
