# Exercism Ruby - Largest Series Product
class Series
  VERSION = 1
  def initialize(numbers)
    @numbers = numbers
    validate_number
  end

  def validate_number
    @numbers.split('').each do |letter|
      raise ArgumentError unless letter =~ /[[:digit:]]/
    end
  end

  def largest_product(buffer)
    return 1 if buffer.zero?
    raise ArgumentError if buffer > @numbers.length || buffer < 0

    maximum = 0
    @numbers.split('').each_with_index do |number, index|
      buffer_length = 0
      sum = 1
      while buffer_length < buffer
        sum *= @numbers[index + buffer_length].to_i
        buffer_length += 1
      end

      maximum = sum if sum > maximum
    end
    maximum
  end
end
