class Complement
	VERSION=3

	def self.of_dna dna
		dna_hash = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

		i = 0

		while i < dna.length do
			dna[i] = dna_hash.[dna[i]]
			i += 1
		end

		return dna
	end	
end