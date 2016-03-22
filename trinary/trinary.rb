class Trinary
  def initialize input
  	@number = input 	 
  end

  def validate_input
    for i in 1..@number.length do
      unless (((@number[0-i].ord-48) == 0) || ((@number[0-i].ord-48) ==1) || ((@number[0-i].ord-48) ==2)) then      
        return false
      end
    end
  end	

  def to_decimal
  	unless validate_input
  	  return 0	
  	end	
  	result = 0
    power = 0

    for i in 1..@number.length do
      result += (@number[0-i].ord-48)*(3**power)
      power += 1
    end

    return result 
  end		
end