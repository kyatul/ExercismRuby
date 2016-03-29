# Exercism Ruby - Hexadecimal
class Hexadecimal
  def initialize(number)
    @number = number
    validate_number(number)
  end

  def validate_number
    @number = '0' unless @number.eql?(@number.match(/[A-Fa-f0-9]*/).to_s)
  end

  def to_decimal
    number = @number.reverse
    decimal = 0
    number.split('').each_with_index do |letter, index|
      decimal += decimal_equivalent(letter) * (16**index)
    end
    decimal
  end

  def decimal_equivalent(letter)
    if letter.eql?('a')
      10
    elsif letter.eql?('b')
      11
    elsif letter.eql?('c')
      12
    elsif letter.eql?('d')
      13
    elsif letter.eql?('e')
      14
    elsif letter.eql?('f')
      15
    else
      letter.to_i
    end
  end
end
