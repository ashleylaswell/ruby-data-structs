class Node
	include Comparable
	attr_accessor :left, :right
	attr_reader :value

	def <=>(other_value)
		value <=> other_value
	end

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end

	def to_s
		"#{@value}"
	end
end

class Tree
	def initialize(array)
		@root = build_tree(array)
	end

	def build_tree

	end

	def insert

	end

	def delete

	end

	def find

	end

	def level_order

	end

	def inorder

	end

	def preorder

	end

	def postorder

	end

	def height

	end

	def depth

	end

	def balanced?

	end

	def rebalance

	end

	def pretty_print(node = @root, prefix = '', is_left = true)
  	pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
  	puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
  	pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
	end

end

tree = Tree.new

print tree.pretty_print
