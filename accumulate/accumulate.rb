# Exercism Ruby - Accmulate
class Array
  def accumulate
    self.map {|number| yield number }
  end
end
