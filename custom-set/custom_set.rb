# Exercism Ruby - Custom Set
class CustomSet
  attr_accessor :data
  def initialize(data = [])
    @data = data.to_a.uniq.sort
  end

  def ==(other)
    other.data == @data if other.is_a? CustomSet
  end

  def delete(number)
    CustomSet.new(@data - [number])
  end

  def put(number)
    CustomSet.new(@data + [number])
  end

  def member?(number)
    @data.include?(number)
  end

  def difference(other)
    CustomSet.new(@data - other.data)
  end

  def union(other)
    CustomSet.new(@data | other.data)
  end

  def intersection(other)
    CustomSet.new(@data & other.data)
  end

  def to_a
    @data
  end

  def size
    @data.size
  end

  def empty
    CustomSet.new([])
  end

  def disjoint?(other)
    difference(other).size == size
  end

  def subset?(other)
    difference(other).size == other.size
  end
end
