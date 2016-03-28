# Exercism Ruby - Bob
class Bob
  def hey(remark)
    if silent?(remark)
      'Fine. Be that way!'
    elsif question?(remark) && !yelling?(remark)
      'Sure.'
    elsif yelling?(remark)
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  private

  def question?(remark)
    remark[-1] == '?'
  end

  def silent?(remark)
    remark.strip.empty?
  end

  def yelling?(remark)
    is_statement = false
    is_yelling = true

    remark.split('').each do |letter|
      if lower?(letter)
        is_yelling = false
        break
      end
      is_statement = true if alphabet?(letter)
    end
    (is_statement && is_yelling)
  end

  def alphabet?(letter)
    letter.match(/[A-Za-z]/)
  end

  def lower?(letter)
    letter.match(/[[:lower:]]/)
  end
end
