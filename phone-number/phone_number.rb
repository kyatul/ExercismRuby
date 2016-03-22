class PhoneNumber
  def initialize n
    @num = n
    @num = @num.tr('()-. ','')

    @num.each_char do |var|
      unless var =~ /[0-9]/ then
      	@num = "0000000000"
      end	
    end
  end

  def number
  	if @num.length == 12 then
  	  return "0000000000"
  	end	
    if @num.length == 11 then
      if @num[0] == '1'
        return @num[1,@num.length-1]
      else
        return "0000000000"
      end  
    end
    if @num.length < 10
      return "0000000000"
    end	
    return @num  	
  end

  def area_code
    return @num[0,3]
  end

  def to_s
  	if @num.length == 11 then
      if @num[0] == '1'
        @num = @num[1,@num.length-1]
      end  
    end
    return "(#{@num[0,3]}) #{@num[3,3]}-#{@num[6,4]}"
  end  	
end	