# Exercism Ruby - Crypto Square
class Crypto
  def initialize(data)
    @data = format_input(data)
    @square_width = square_width(@data)
    @ciphers = []
  end

  def normalize_ciphertext
    generate_cipher
    get_cipher
  end

  def ciphertext
    normalize_ciphertext.tr(' ', '')
  end

  def size
    @square_width
  end

  def get_cipher
    cipher_index = 0
    result_cipher = ''

    while cipher_index < @square_width
      @ciphers.each do |cipher|
        unless cipher[cipher_index].nil?
          result_cipher << cipher[cipher_index]
        end
      end
      cipher_index += 1
      result_cipher << ' '
    end
    result_cipher.strip
  end

  def generate_cipher
    index = 0
    while index < @data.length
      @ciphers.push(@data[index, @square_width])
      index += @square_width
    end
  end

  def normalize_plaintext
    @data
  end

  def plaintext_segments
    result = []
    word = ''
    @data.split('').each_with_index { |c, index|
      word << c

      if (index % @square_width == (@square_width - 1) ||
                                                      index == @data.size - 1)
        result.push(word)
        word = ''
      end
    }
    result
  end

  private

  def square_width(data)
    sqrt = Math.sqrt(data.length).to_i
    if data.length == sqrt**2
      sqrt
    else
      sqrt + 1
    end
  end

  def format_input(data)
    data.tr(' .!#$%^&,', '').downcase
  end
end
