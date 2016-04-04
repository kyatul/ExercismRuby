# Exercism Ruby - Simple Cipher
class Cipher
  attr_accessor :key
  def initialize(key = nil)
    @key = key
    validate_key
  end

  def validate_key
    generate_key if @key.nil?
    raise ArgumentError unless @key =~ /[[:alpha:]]/ && @key =~ /[[:lower:]]/
    raise ArgumentError if @key.empty?
  end

  def generate_key
    @key = ''
    for index in 0..99
      @key[index] = Random.rand(97...122).chr
    end
  end

  def encode(text)
    text.split('').each_with_index do |letter, index|
      substitute = letter.ord + (@key[index].ord - 97)
      substitute =  round_up(substitute)
      text[index] = substitute.chr
    end
    text
  end

  def round_up(number)
    if number > 122
      number = 96 + number % 122
    end
    number
  end

  def decode(text)
    text.split('').each_with_index do |letter, index|
      text[index] = (letter.ord - (@key[index].ord - 97)).chr
    end
    text
  end
end
