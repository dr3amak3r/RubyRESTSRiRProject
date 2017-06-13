# -*- encoding: utf-8 -*-
# stub: rubysl-io-console 2.0.0 ruby lib
# stub: ext/rubysl/io/console/extconf.rb

Gem::Specification.new do |s|
  s.name = "rubysl-io-console".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2013-09-04"
  s.description = "Ruby standard library console.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.extensions = ["ext/rubysl/io/console/extconf.rb".freeze]
  s.files = ["ext/rubysl/io/console/extconf.rb".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-io-console".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Ruby standard library console.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
  end
end
