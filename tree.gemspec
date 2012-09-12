# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tree/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["orichi"]
  gem.email         = ["wang2365@126.com"]
  gem.description   = "一个简单的tree"
  gem.summary       = "实现基本tree的功能，显示节点深度"
  gem.homepage      = ""
  gem.add_development_dependency "rspec"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tree"
  gem.require_paths = ["lib"]
  gem.version       = Tree::VERSION
end