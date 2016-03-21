class Complement
	VERSION=3

	def self.of_dna dna
		dna_hash = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

		i = 0

		while i < dna.length do
			key = dna[i]
			if dna_hash.has_key?(key)
				dna[i] = dna_hash[key]
			else
				raise ArgumentError
			end	
			i += 1
		end

		return dna
	end

end