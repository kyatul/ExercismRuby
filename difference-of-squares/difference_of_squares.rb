class Squares

	VERSION = 2

	def  initialize n
		@n = n
	end

	def square_of_sum
		sum = 0

		for i in 1..@n do
			sum += i
		end

		return sum**2
	end

	def sum_of_squares
		sum = 0

		for i in 1..@n do
			sum += i**2
		end

		return sum
	end	

	def difference
		return square_of_sum - sum_of_squares
	end	
end	