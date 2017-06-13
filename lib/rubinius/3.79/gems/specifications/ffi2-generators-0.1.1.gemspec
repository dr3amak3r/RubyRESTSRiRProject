# -*- encoding: utf-8 -*-
# stub: ffi2-generators 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ffi2-generators".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2013-08-28"
  s.description = "Utilities for generating constants, types, and structs for FFI.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubinius/ffi2-generators".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Utilities for generating constants, types, and structs for FFI.".freeze

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
