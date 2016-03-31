# Exercism Ruby - Allergies
class Allergies
  ALLERGIES = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)

  def initialize(score)
    @score = score
  end

  def allergic_to?(fruit)
    if fruit.eql?('eggs')
      @score & 1 != 0
    elsif fruit.eql?('peanuts')
      @score & 2 != 0
    elsif fruit.eql?('shellfish')
      @score & 4 != 0
    elsif fruit.eql?('strawberries')
      @score & 8 != 0
    elsif fruit.eql?('tomatoes')
      @score & 16 != 0
    elsif fruit.eql?('chocolate')
      @score & 32 != 0
    elsif fruit.eql?('pollen')
      @score & 64 != 0
    elsif fruit.eql?('cats')
      @score & 64 != 0
    end
  end

  def list
    allergies = []
    ALLERGIES.each do |allergy|
      allergies.push(allergy) if allergic_to?(allergy)
    end
    allergies
  end
end
