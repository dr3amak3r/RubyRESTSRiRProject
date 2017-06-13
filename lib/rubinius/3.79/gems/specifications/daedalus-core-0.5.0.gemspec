# -*- encoding: utf-8 -*-
# stub: daedalus-core 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "daedalus-core".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2015-05-17"
  s.description = "Daedalus is a build system based on years of attempting to build Rubinus with a collection of Rake tasks. Rubinius is a complex system. It has dependencies on external C libraries (some of which are vendored), internal C/C++ libraries, Ruby C-extensions, and compiled Ruby code. The Rubinius bytecode compiler is written in Ruby, so we have to bootstrap compiling it.\n\nRake fails at this task because there is no way to manage multiple, independent dependency trees without subprocessing another Rake process. This results in unreasonable and unmanagable complexity.\n".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/rubinius/daedalus-core".freeze
  s.licenses = ["BSD".freeze]
  s.rdoc_options = ["--title".freeze, "Daedalus Gem".freeze, "--main".freeze, "README".freeze, "--line-numbers".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Daedalus is a build system extracted from Rubinius. Almost no functionality has been implemented. This is very alpha.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.8"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 0.9"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.8"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.8"])
  end
end
