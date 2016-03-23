class PrimeFactors
  def self.for number
    factors = []
    index = 0

    divisor = 2
    while divisor <= number && number != 1
      while number % divisor == 0
        factors[index] = divisor
        index += 1
        number /= divisor
      end
      divisor += 1
    end
    factors
  end
end
