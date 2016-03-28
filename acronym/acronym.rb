# Exercism Ruby - Acronym
class Acronym
  VERSION = 1

  def self.abbreviate(statement)
    abbrevation = ''
    statement.split('').each_with_index do |letter, index|
      if index == 0 || blank_or_special?(statement[index - 1])
        abbrevation << letter.upcase
      elsif upper?(letter) && lower?(statement[index - 1])
        abbrevation << letter.upcase
      end
    end
    abbrevation
  end

  def self.upper?(letter)
    letter.match(/[[:upper:]]/)
  end

  def self.lower?(letter)
    letter.match(/[[:lower:]]/)
  end

  def self.blank_or_special?(letter)
    letter.match(/[\s?(\-)]/)
  end
end
