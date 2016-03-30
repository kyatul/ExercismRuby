# Exercism Ruby - Atbash Cipher
class Atbash
  def self.encode(data)
    @@data = data

    make_process_ready
    substitute_characters
    tokenize_data
  end

  def self.tokenize_data
    token_length = 5
    data = ''

    @@data.split('').each
    index = 0
    while index < @@data.length
      data << "#{@@data[index, token_length]}\s"
      index += 5
    end
    @@data = data.strip
  end

  def self.substitute_characters
    @@data.split('').each_with_index do |letter, index|
      @@data[index] = substitute(letter) if letter?(letter)
    end
  end

  def self.letter?(letter)
    letter =~ /[[:alpha:]]/
  end

  def self.substitute(letter)
    (122 - (letter.ord % 97)).chr
  end

  def self.make_process_ready
    @@data = @@data.downcase.gsub(/[\s\.\,]/,'').to_s
  end
end
