# Exercism Ruby - Linked List
class Deque
  attr_accessor :head, :back
  def initialize
    @size = 0
    @nodes = []
    @head = nil
    @back = nil
  end

  def push(datum)
    @size += 1

    if @head.nil?
      @head = Element.new(datum)
      @back = @head
    else
      element = Element.new(datum)
      element.next = @head
      @head.previous = element
      @head = element
    end
  end

  def unshift(datum)
    @size += 1

    if @head.nil?
      @head = Element.new(datum)
      @back = @head
    else
      element = Element.new(datum)
      element.previous = @back
      @back.next = element
      @back = element
    end
  end

  def pop
    @size -= 1
    node = @head
    @head = @head.next
    @head.nil? ? @back = nil : @head.previous = nil
    node.datum
  end

  def shift
    @size -= 1
    node = @back
    @back = @back.previous
    @back.nil? ? @head = nil : @back.next = nil
    node.datum
  end
end

# Class representing a single Node in list
class Element
  attr_accessor :datum, :next, :previous

  def initialize(datum, next_node = nil, previous_node = nil)
    @datum = datum
    @next = next_node
    @previous = previous_node
  end

  def tail?
    @next.nil?
  end
end
