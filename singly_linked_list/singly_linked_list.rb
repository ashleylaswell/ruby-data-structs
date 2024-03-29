class SinglyLinkedList
	def initialize
		@head = nil
	end

	def each
		node = @head
		until node.nil?
			yield node
			node = node.next
		end
	end

	def append(value)
		if @head
			find_tail.next = Node.new(value)
		else
			@head = Node.new(value)
		end
	end

	def prepend(value)
		node = Node.new(value)
		node.next = @head
		@head = node
	end

	def delete(value)
		if @head.value == value
			@head = @head.next
			return
		end

		node = find_before(value)
		node.next = node.next.next
	end

	def size
		size = 0
		each { size += 1 }
		size
	end

	def find_head
		@head
	end

	def find_tail
		node = @head

		return node if !node.next
		return node if !node.next while (node = node.next)
	end

	def at(index)
		i = 0
		self.each { |node|
			return node if i == index
			i += 1
		}
	end

	def pop
		tail = find_tail.value
		delete(tail)
		tail
	end

	def contains?(value)
		return false if find(value).nil?
		true
	end

	def find(value)
		node = @head

		return false if !node.next
		return node if node.value == value

		while (node = node.next)
			return node if node.value == value
		end
	end

	def append_after(target, value)
		node = find(target)

		return unless node

		old_next = node.next
		node.next = Node.new(value)
		node.next.next = old_next
	end

	def find_before(value)
		node = @head

		return false if !node.next
		return node if node.next.value == value

		while (node = node.next)
			return node if node.next && node.next.value == value
		end
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
	attr_accessor :next
	attr_reader :value

	def initialize(value)
		@value = value
		@next = nil
	end

	def to_s
		"#{@value}"
	end
end

list = SinglyLinkedList.new

list.append(10)
list.append(20)
list.append(30)
list.prepend(5)

list.append_after(10, 15)
list.append_after(20, 25)

puts list.contains?(10)
print list.print

puts list.size
