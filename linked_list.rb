# frozen_string_literal: true

module LinkedLists
  class LinkedList
    def initialize
      @head = nil
    end

    attr_reader :head

    def append(value)
      new_node = Node.new(value)
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = new_node
    end

    def prepend(value)
      @head = Node.new(value, @head)
    end

    def size
      return 0 if @head.nil?

      size = 1
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
        size += 1
      end
      size
    end

    def tail
      return nil if @head.nil?

      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node
    end

    def at(index)
      count = 0
      current_node = @head
      while count < index
        current_node = current_node.next_node
        count += 1
      end
      current_node
    end

    def pop
      current_node = @head
      current_node = current_node.next_node until current_node.next_node == tail
      current_node.next_node = nil
    end

    def contains?(value)
      contains_value = false
      current_node = @head
      until current_node == tail
        if current_node.value == value
          contains_value = true
          break
        end
        current_node = current_node.next_node
      end
      contains_value
    end

    def find(value)
      index_of_node_with_value = nil
      count = 0
      current_node = @head
      until current_node == tail
        if current_node.value == value
          index_of_node_with_value = count
          break
        end
        current_node = current_node.next_node
        count += 1
      end
      index_of_node_with_value
    end

    def to_s
      result_string = "( #{@head.value} )"
      current_node = @head

      until current_node == tail
        current_node = current_node.next_node
        result_string += " -> ( #{current_node.value} )"
      end
      result_string += ' -> nil'
      result_string
    end

    # Extra Credit

    def insert_at(value, index)
      current_node = @head
      new_node = Node.new(value, at(3))

      current_node = current_node.next_node until current_node.next_node == at(index)

      current_node.next_node = new_node
    end

    def remove_at(index)
      node_to_remove = at(index)
      current_node = @head
      current_node = current_node.next_node until current_node.next_node == node_to_remove
      current_node.next_node = node_to_remove.next_node
      node_to_remove.next_node = nil
    end
  end
end
