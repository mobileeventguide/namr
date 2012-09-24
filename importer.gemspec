# -*- encoding: utf-8 -*-
require File.expand_path('../lib/namr/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nick Thomas"]
  gem.email         = ["nick.thomas@mobileeventguide.de"]
  gem.description   = %q{Memorisable Name Generator for our API Keys}
  gem.summary       = %q{funky name generator}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "namr"
  gem.require_paths = ["lib"]
  gem.version       = NAMR::VERSION
end
