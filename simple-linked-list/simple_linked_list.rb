# Exercism Ruby - Simple Linked List
class SimpleLinkedList
  attr_accessor :head

  def initialize
    @size = 0
    @nodes = []
    @head = nil
  end

  def size
    @size
  end

  def peek
    if @head.nil?
      nil
    else
      @head.datum
    end
  end

  def empty?
    @size.zero?
  end

  def pop
    @size -= 1
    node = @head
    @head = @head.next
    node.datum
  end

  def push(datum)
    @size += 1

    if @head.nil?
      @head = Element.new(datum)
    else
      @head = Element.new(datum, @head)
    end
  end

  def to_a
    datums = []
    head_a = @head

    until head_a.nil?
      datums.push(head_a.datum)
      head_a = head_a.next
    end
    datums
  end

  def reverse
    list_r = Marshal.load(Marshal.dump(self))

    one = nil
    two = list_r.head
    until two.nil?
      three =  two.next
      two.next = one
      one = two
      two = three
    end

    list_r.head = one
    list_r
  end

  def self.from_a(datums)
    list = new

    unless datums.nil?
      datums.reverse.each do |datum|
        list.push(datum)
      end
    end
    list
  end
end

class Element
  attr_accessor :datum, :next

  def initialize(datum, next_node = nil)
    @datum = datum
    @next = next_node
  end

  def tail?
    @next.nil?
  end
end
