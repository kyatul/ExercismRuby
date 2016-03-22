class Series
  
  def initialize input
    @original_series = input
  end
  
  def validate_input size
  	if size > @original_series.length
  	  raise ArgumentError
  	end  	
  end

  def slices size  	
    result_series = []
    validate_input size
    i = 0
    
    while i < @original_series.length do
      count = 0
      temp_series = []

      while count < size && (i + size) <= @original_series.length do
      	temp_series[count] = @original_series[count + i ].to_i
      	count += 1
      end

      if temp_series.length > 0 then
      	result_series[i] = temp_series     	
      end
      i += 1		
    end	
    return result_series
  end	
end	