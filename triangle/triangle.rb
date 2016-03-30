# Custom Error Class
class TriangleError < StandardError
end

# Exercism Ruby - Triangle
class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

    validate_sides
  end

  def validate_sides
    if (@side_one + @side_two + @side_three) == 0
      raise TriangleError
    elsif @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif @side_one + @side_two <= @side_three
      raise TriangleError
    elsif @side_two + @side_three <= @side_one
      raise TriangleError
    elsif @side_one + @side_three <= @side_two
      raise TriangleError
    end
  end

  def kind
    if @side_one == @side_two
      if @side_one == @side_three
        :equilateral
      else
        :isosceles
      end
    else
      if @side_one == @side_three
        :isosceles
      elsif @side_two == @side_three
        :isosceles
      else
        :scalene
      end
    end
  end
end
