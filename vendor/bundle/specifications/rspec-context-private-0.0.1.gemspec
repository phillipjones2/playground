# -*- encoding: utf-8 -*-
# stub: rspec-context-private 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-context-private"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Devine"]
  s.date = "2014-05-24"
  s.description = "RSpec shared context to make private methods temporarily public."
  s.email = ["barelyknown@icloud.com"]
  s.homepage = "https://github.com/barelyknown/rspec-context-private"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "RSpec shared context to make private methods temporarily public."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
