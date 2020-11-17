class DoublyLinkedList
	def initialize
		@head = nil
	end

	def print
		node = @head
		puts node

		while (node = node.next)
			puts node
		end
	end
end

class Node
	attr_accessor :next, :previous
	attr_reader :value

	def initialize(value)
		@value = value
		@next = nil
		@previous = nil
	end

	def to_s
		"Node with value #{@value}"
	end
end

list = DoublyLinkedList.new

list.append(10)
list.append(20)
list.append(30)

list.print
