# -*- encoding: utf-8 -*-
require File.expand_path('../lib/diablo3/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nick Greenfield", "Evan Farrar"]
  gem.email         = ["greenie0506@gmail.com", "evanfarrar@gmail.com"]
  gem.description   = %q{Diablo3 Ruby Gem}
  gem.summary       = %q{Allows you to see the account profile information from the diablo3 API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "diablo3"
  gem.require_paths = ["lib"]
  gem.version       = Diablo3::VERSION
end
