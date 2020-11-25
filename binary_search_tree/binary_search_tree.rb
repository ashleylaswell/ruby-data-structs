class Node
	include Comparable
	attr_accessor :left, :right
	attr_reader :value

	def <=>(other)
		value <=> other.value
	end

	def initialize(value, left = nil, right = nil)
		@value = value
		@left = left
		@right = right
	end

	def to_s
		"#{@value}"
	end
end

class Tree
	def initialize(array)
		@root = build_tree(array)
	end

	def build_tree(array)
		return nil if array.empty?

		sorted_array = array.sort.uniq
		middle = sorted_array.length / 2

		root = Node.new(sorted_array[middle])
		root.left = build_tree(sorted_array[0...middle])
		root.right = build_tree(sorted_array[middle + 1..-1])

		return root
	end

	def insert(value)
		new_node = Node.new(value)
		temp = @root

		loop do
			break if new_node == temp

			if new_node > temp
				(temp.right = new_node; break) if temp.right.nil?
				temp = temp.right
			else
				(temp.left = new_node; break) if temp.left.nil?
				temp = temp.left
			end
		end
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
  	puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
  	pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
	end

end

array = [1, 2, 9, 6, 4, 27, -6]
tree = Tree.new(array)
tree.insert(-7)

print tree.pretty_print
