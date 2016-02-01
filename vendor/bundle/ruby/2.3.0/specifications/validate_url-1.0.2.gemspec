# -*- encoding: utf-8 -*-
# stub: validate_url 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "validate_url"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tanel Suurhans", "Tarmo Lehtpuu", "Vladimir Krylov"]
  s.date = "2015-07-21"
  s.description = "Library for validating urls in Rails."
  s.email = ["tanel.suurhans@perfectline.co", "tarmo.lehtpuu@perfectline.co", "vladimir.krylov@perfectline.co"]
  s.extra_rdoc_files = ["LICENSE.md", "README.md"]
  s.files = ["LICENSE.md", "README.md"]
  s.homepage = "http://github.com/perfectline/validates_url/tree/master"
  s.rubygems_version = "2.5.1"
  s.summary = "Library for validating urls in Rails."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.0.0"])
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.0.0"])
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end
