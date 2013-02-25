# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "marionette-selectable_list"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Markus Seeger"]
  s.email       = ["mail@codegourmet.de"]
  s.homepage    = "https://github.com/codegourmet/marionette-selectable_list"
  s.summary     = "Selectable List View for Marionette"
  s.description = "A CompositeView and accompanying ItemView that represent a selectable list."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "rails", ">= 3.1.0"

  s.files        = Dir.glob("{lib,vendor}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end
