# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{macmap}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ari Lerner"]
  s.date = %q{2009-06-03}
  s.email = %q{arilerner@mac.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/macmap.rb", "test/fixtures", "test/fixtures/darwin", "test/fixtures/solaris", "test/fixtures/ubuntu", "test/macmap_test.rb", "test/test_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/auser/macmap}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{= macmap  Ever wanted to map your interface to an ip?  If you haven't, why not?  Alas, Macmap is here to help!  Usage is easy:  Macmap.map_iface_to_ip %{ifconfig -a}  Or  require "rubygems" require "popen3"  Open3.popen3('ifconfig -a') { |stdin, stdout, stderr| Macmap.map_iface_to_ip(stdout) }    Try it! It's fun  == Copyright  Copyright (c) 2009 Ari Lerner. See LICENSE for details.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
