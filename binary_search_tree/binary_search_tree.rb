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
	def initialize
		@root = nil
	end
end

