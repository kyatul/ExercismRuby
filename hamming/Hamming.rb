class Hamming
	VERSION = 1
	def self.compute(dna1,dna2)
		i = 0
		count = 0


		if dna1.length != dna2.length
			raise ArgumentError	
		end
			
		while i < dna1.length do
			if dna1[i] != dna2[i]
				count = count + 1
			end
			i += 1	
		end

		return count
	end	
end	