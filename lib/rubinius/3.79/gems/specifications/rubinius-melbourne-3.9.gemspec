# -*- encoding: utf-8 -*-
# stub: rubinius-melbourne 3.9 ruby lib
# stub: ext/rubinius/code/melbourne/extconf.rb

Gem::Specification.new do |s|
  s.name = "rubinius-melbourne".freeze
  s.version = "3.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2017-04-17"
  s.description = "Ruby parser extracted from MRI.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.extensions = ["ext/rubinius/code/melbourne/extconf.rb".freeze]
  s.files = ["ext/rubinius/code/melbourne/extconf.rb".freeze]
  s.homepage = "https://github.com/rubinius/rubinius-code".freeze
  s.licenses = ["MPL-2.0".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Rubinius Ruby Parser.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<redcard>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<redcard>.freeze, ["~> 1.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<redcard>.freeze, ["~> 1.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
