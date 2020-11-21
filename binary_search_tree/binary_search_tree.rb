class Node
	include Comparable
	attr_accessor :left, :right
	attr_reader :data

	def <=>(other)
		data <=> other.data
	end

	def initialize(data, left = nil, right = nil)
		@data = data
		@left = left
		@right = right
	end

	def to_s
		"#{@data}"
	end
end

class Tree
	def initialize(array)
		@root = build_tree(array)
	end

	def build_tree(array)
		return nil if array.empty?

		result = array.sort.uniq
		middle = result.length / 2

		root = Node.new(result[middle])
		root.left = build_tree(result[0...middle])
		root.right = build_tree(result[middle + 1..-1])

		return root
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

array = [1, 2, 9, 6, 4, 27, -6]
tree = Tree.new(array)

print tree.pretty_print
