# Tree

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'tree'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tree

## Usage

initialize one node with
	father = Tree.new('father')
add children by this way
	father << Tree.new('child1')
Do Not use 
	father.children << Tree.new

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
