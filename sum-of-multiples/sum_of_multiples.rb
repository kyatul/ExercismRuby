class SumOfMultiples
  def initialize *input 	
    @multiples = input
  end	
  
  def self.to number
    sum = 0
    i = 3
    while i < number
      if (i % 3 == 0) || (i % 5 == 0) then
      	sum += i
       end
      i += 1	
    end
    return sum
  end

  def to number
    sum = 0
    i = @multiples[0]
    while i < number
      j = 0
      while j < @multiples.length 
        if i % @multiples[j] == 0 then
      	  sum += i
      	  break
        end
        j += 1 
      end
      i += 1	
    end
    return sum
  end
end  
