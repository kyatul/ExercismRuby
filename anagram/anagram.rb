# Exercism Ruby - Anagram
class Anagram
  def initialize(target_anagram)
    @target_anagram = target_anagram
    @sorted_target_anagram = sort_d(target_anagram)
  end

  def match(test_anagrams)
    @result = []
    test_anagrams.each do |anagram|
      if equivalent_to_target(anagram)
        @result.push(anagram) unless added_to_result(anagram)
      end
    end
    @result.sort
  end

  def added_to_result(anagram)
    @result.collect { |el| el.downcase }.include? anagram.downcase
  end

  def equivalent_to_target(anagram)
    ((sort_d(anagram).eql? @sorted_target_anagram) &&
                          !@target_anagram.casecmp(anagram).zero?)
  end

  def sort_d(anagram)
    anagram.downcase.chars.sort.join
  end
end
