# Exercism Ruby - Nth Prime
class Prime
  def self.nth(number)
    validate_number(number)
    count = 0
    dividend = 2

    until count == number
      count += 1 if prime?(dividend)
      dividend += 1
    end
    dividend - 1
  end

  def validate_number(number)
    raise ArgumentError if number == 0
  end

  def prime?(number)
    return true if number == 2

    divisor = 2
    while divisor < number
      return false if number % divisor == 0
      divisor += 1
    end
    true
  end
end
