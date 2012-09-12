require "tree/version"

module Orichi

  class Tree
    attr_accessor :parent, :deep_index
    attr_reader :node, :children
  	def initialize(value)
  		@node = value
  		@parent = nil
  		@deep_index = 0
  		@sub_children = []
  	end

  	def children
  	  @sub_children.flatten
    end
    
  	def <<(nodes)
  	  temp_nodes = if nodes.is_a?Array
  	    nodes
      else
        [nodes]
      end
      temp_nodes.each do |node|
        if node.is_a? Tree
          @sub_children << node
          node.parent = self
          node.update(self)
        end
      end
      return self
  	end

    def update(parent_node)
  	  self.deep_index = parent_node.deep_index + 1
  	  self.children.each{|x| x.update(self)} 
  	end
  end
end
extend Orichi
