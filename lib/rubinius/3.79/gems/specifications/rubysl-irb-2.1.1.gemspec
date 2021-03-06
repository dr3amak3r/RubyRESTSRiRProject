# -*- encoding: utf-8 -*-
# stub: rubysl-irb 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rubysl-irb".freeze
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2015-01-22"
  s.description = "Ruby standard library irb.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.executables = ["irb".freeze]
  s.files = ["bin/irb".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-irb".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Ruby standard library irb.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubysl-e2mmap>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubysl-mathn>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubysl-thread>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<rubysl-e2mmap>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-mathn>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-thread>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rubysl-e2mmap>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-mathn>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-thread>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
  end
end
