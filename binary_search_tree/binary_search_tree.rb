class Node
	attr_accessor :left, :right
	attr_reader :value

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
	def initialize
		@root = nil
	end
end

