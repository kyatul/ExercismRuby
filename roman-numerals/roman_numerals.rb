class Fixnum
  VERSION = 1	
  def to_roman
    roman_hash = { "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50,
    				"XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1 }
    res = ''
    num = self				
    roman_hash.each  do |key, value|
    	matches = num/value
    	res = res.concat(repeat key, matches)
    	num = num%value
    end
    return res	
  end				
 
  def repeat s, n
  	if s.nil? || s==0 then
  	  return ''	
  	end	
  	str = ''
  	i = 0
    while i < n do
      str.concat s
      i += 1	
    end	
    return str
  end
end	