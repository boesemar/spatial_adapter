# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'spatial_adapter/version'

Gem::Specification.new do |s|
  s.name = "spatial_adapter"
  s.version = SpatialAdapter::VERSION

  s.platform = Gem::Platform::RUBY

  s.authors = ["Pete Deffendol", "Guilhem Vellut"]
  s.email = "martin@maxnet.ao"
  s.homepage = "http://github.com/boesemar/spatial_adapter"
  s.summary = "spatial_adapter-#{SpatialAdapter::VERSION}"
  s.description = %q{Provides enhancements to ActiveRecord to handle spatial data in PostgreSQL.}

  s.files         =  Dir.glob("lib/**/*").delete_if { |item| item.include?("~") }
  s.extra_rdoc_files = ["README.rdoc", "MIT-LICENSE"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]

  s.add_dependency 'pg'
  s.add_dependency 'activerecord', '>= 2.2.2'
  s.add_dependency 'georuby', '~>2.5'
end
