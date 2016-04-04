# Exercism Ruby - Pascals Triangle
class Triangle
  def initialize(row)
    @row = row
  end

  def rows
    results = [[1]]
    index = 1
    while index < @row
      result = []
      buffer = 0
      result.push(1)
      results[index - 1].each_with_index do |number, location|
        result.push(number + buffer) unless location.zero?
        buffer = number
      end
      result.push(1)
      results.push(result)
      index += 1
    end
    results
  end

  def last
    results = rows
    results[-1]
  end
end
