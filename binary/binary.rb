class Binary
  VERSION = 1	
  def initialize n
    @num = n
  	
  	for i in 1..@num.length do
      unless (((@num[0-i].ord-48) == 0) || ((@num[0-i].ord-48) ==1)) then      
        raise ArgumentError
      end
    end      	   
  end

  def to_decimal
  	result = 0
    power = 0

    for i in 1..@num.length do
      result += (@num[0-i].ord-48)*(2**power)
       power += 1
    end

    return result 
  end	
end	