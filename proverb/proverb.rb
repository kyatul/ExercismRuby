# Exercism Ruby - Proverb
class Proverb
  def initialize(*words, **qualifiers)
    @words = words
    @qualifier = qualifiers
  end

  def to_s
    song = ''
    @words.each_with_index do |word, index|
      unless last?(index)
        song << "For want of a #{word} the #{@words[index + 1]} was lost.\n"
      end
    end
    song << "And all for the want of a #{qualifier?}#{@words[0]}."
  end

  def qualifier?
    unless @qualifier[:qualifier].nil?
      @qualifier[:qualifier] = @qualifier[:qualifier] << ' '
    end
  end

  def last?(index)
    index == @words.length - 1
  end
end
