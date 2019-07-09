# coding: utf-8
# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "rbconfig-update"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 2.6".freeze)
  s.require_paths = ["lib"]
  s.authors = ["Nobu Nakada"]
  s.date = "2019-07-09"
  s.description = "Update/add new info to `RbConfig::CONFIG`.".freeze
  s.email = "nobu@ruby-lang.org"
  s.files = %w[
    README.md
    bin/update-rbconfig.rb
    lib/rbconfig/update.rb
  ]
  s.homepage = "https://github.com/ruby/ruby"
  s.licenses = ["BSD-2-Clause"]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Update RbConfig"
end
