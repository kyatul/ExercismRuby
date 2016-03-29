# Exercism Ruby - Sieve
class Sieve
  def initialize(target)
    @target = target
    @result = []
  end

  def primes
    dividend = 2

    while dividend <= @target
      @result.push(dividend) if prime?(dividend)
      dividend += 1
    end
    @result
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
