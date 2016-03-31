# Exercism Ruby - Circular Buffer
class CircularBuffer
  class BufferEmptyException < Exception
  end

  class BufferFullException < Exception
  end

  def initialize(buffer_length)
    @buffer_length = buffer_length
    @start = 0
    @end = 0
    @buffer = []
  end

  def clear
    @start = 0
    @end = 0
    @buffer = []
  end

  def read
    raise BufferEmptyException if empty?

    data = @buffer[@start]
    # only one element
    if @start == @end
      @buffer[@start] = ''
    # more than one element
    else
      @buffer[@start] = ''
      @start = (@start + 1) % @buffer_length
    end
    data
  end

  def write(data)
    if empty?
      @buffer[@start] = data
    elsif next_available?(@end)
      @end = (@end + 1) % @buffer_length
      @buffer[@end] = data
    else
      raise BufferFullException
    end
  end

  def write!(data)
    if empty?
      @buffer[@start] = data
    elsif next_available?(@end)
      @end = (@end + 1) % @buffer_length
      @buffer[@end] = data
    else
      @buffer[@start] = data
      @start = (@start + 1) % @buffer_length
      @end = (@end + 1) % @buffer_length
    end
  end

  def next_available?(index)
    index = (index + 1) % @buffer_length
    @buffer[index].nil? || @buffer[index].empty?
  end

  def empty?
    @start == @end && (@buffer[@start].nil? || @buffer[@start].empty?)
  end
end
