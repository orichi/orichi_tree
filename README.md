# Tree

一个简单的tree,实现基本tree的功能，显示节点深度

## Installation

Add this line to your application's Gemfile:

    gem 'tree'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tree

## Usage
 
		father = Tree.new('father') #=>node father
		father << Tree.new('child1') #=>node father's children node child1 
		father << [Tree.new('child1'),Tree.new('child2')] 	#=>node father's children node child1 and node child2

*Warning: Do Not use

		father.children << Tree.new



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
