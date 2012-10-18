# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idonethis/version'

Gem::Specification.new do |gem|
  gem.name          = "idonethis"
  gem.version       = Idonethis::VERSION
  gem.authors       = ["Ryan Brunner"]
  gem.email         = ["ryan@ryanbrunner.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'ruby-gmail'
  gem.add_runtime_dependency 'activesupport'
  gem.add_runtime_dependency 'hashie'
  gem.add_runtime_dependency 'mime'
end
