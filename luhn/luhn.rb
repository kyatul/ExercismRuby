# Exercism Ruby - Luhn
class Luhn
  def initialize(numbers)
    @numbers = numbers.to_s
  end

  def addends
    result = []
    @numbers.split('').reverse.each_with_index do |number, index|
      if index.odd?
        data = number.to_i * 2
        result.push(data > 10 ? (data - 9) : data)
      else
        result.push(number.to_i)
      end
    end
    result.reverse
  end

  def checksum
    result = addends
    checksum = 0
    result.each do |number|
      checksum += number
    end
    checksum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(numbers)
    luhn = Luhn.new(numbers * 10)
    checksum_current = luhn.checksum
    numbers * 10 + ((10 - (checksum_current % 10)) % 10)
  end
end
