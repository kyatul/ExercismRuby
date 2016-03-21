class Robot
	def initialize
		@name = "RX"+(100+rand(99)).to_s
	end

	def name
		@name
	end
	
	def reset
		temp = @name
		while temp.eql? @name
			@name = "RX"+(100+rand(99)).to_s
		end
		
		@name	 
	end		
end	