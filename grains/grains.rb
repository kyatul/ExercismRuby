class Grains
  def self.square n
    if n == 1
      return 1
    else
      2**(n-1)	
    end  	
  end

  def self.total
    sum = 0
    for i in 1..64 do
      sum += square i
    end
    return sum
  end	
end	