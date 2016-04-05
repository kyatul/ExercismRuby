# Exercism Ruby - Wordy
class WordProblem
  def initialize(question)
    @question = question[8..(question.length - 2)].split(' ')
  end

  def answer
    result = @question[0].to_i

    index = 1
    while index < @question.length
      if @question[index].eql?('plus')
        result += @question[index + 1].to_i
      elsif @question[index].eql?('minus')
        result -= @question[index + 1].to_i
      elsif @question[index].eql?('multiplied')
        index += 1 # escaping element 'by'
        result *= @question[index + 1].to_i
      elsif @question[index].eql?('divided')
        index += 1 # escaping element 'by'
        result /= @question[index + 1].to_i
      else
        raise ArgumentError
      end
      index += 2
    end
    result
  end
end
