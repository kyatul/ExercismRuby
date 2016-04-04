# Exercism Ruby - Pig Latin
class PigLatin
  def self.translate(words)
    result = ''
    words.split(' ').each do |word|
      position = -1
      word.split('').each_with_index do |letter, index|
        if word[index] == 'a' || word[index] == 'e' || word[index] == 'i' ||
         word[index] == 'o'|| word[index] == 'u'
          position = index
          break
        end
      end

      part_one = position == 0 ? '' : word[0..position-1]
      part_two = word[position, word.length]
      puts "#{word} #{position} #{part_one} #{part_two}"
      part_three = 'ay'
      result << (part_two + part_one + part_three + ' ')
    end
    result.strip
  end
end
