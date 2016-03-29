# Exercism Ruby - Nth Prime
class Prime
  def self.nth(number)
    count = 0
    dividend = 2

    until count == number
      count += 1 if prime?(dividend)
      dividend += 1
    end
  end

  def prime?(number)
    return true if number == 2

    divisor = 2
    while divisor < number
      return true if number % divisor == 0
      divisor += 1
    end
    false
  end
end
