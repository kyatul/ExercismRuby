class Raindrops

	VERSION = 1

	def self.convert num
		temp = num
		rain_sound = ""
		flag,status_3,status_5,status_7 = true,true,true,true


		while flag do
			if num % 3 == 0 
				num = num/3;
				if status_3
					rain_sound.concat("Pling")
					status_3 = false
				end	
			elsif num % 5 == 0 
				num = num/5;
				if status_5
					rain_sound.concat("Plang")
					status_5 = false
				end	
			elsif num % 7 == 0 
				num = num/7;
				if status_7
					rain_sound.concat("Plong")
					status_7 = false
				end	
			else
				flag = false 		
			end	

		end

		if rain_sound.length > 0
			return rain_sound
		else
			return temp.to_s
		end
				
	end	

end	