class PrimeFactors
  def self.for number
  	factors = []
  	index = 0
    
    i = 2
    while i <= number && number != 1
      while number % i == 0
        factors[index] = i
        index += 1
        number /= i
      end
      i += 1 	
    end
    return factors
  end	
end	