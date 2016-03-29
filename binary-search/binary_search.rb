# Exercism Ruby - Binary Search
class BinarySearch
  def initialize(data)
    @data = data

    validate_data
  end

  def validate_data
    data_sort = @data.sort

    @data.each_with_index do |element, index|
      raise ArgumentError unless element == data_sort[index]
    end
  end

  def list
    @data
  end

  def middle
    @data.size / 2
  end

  def search_for(element)
    low = 0
    high = @data.size - 1

    while low < high
      middle = (low + high) / 2

      if @data[middle] == element
        return middle
      elsif @data[middle] < element
        low = middle + 1
      else
        high = middle - 1
      end
    end
    raise RuntimeError
  end
end
