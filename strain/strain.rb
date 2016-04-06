# Exercism Ruby - Strain
class Array
  def keep
    self.select { |number| yield number}
  end

  def discard
    self.reject { |number| yield number}
  end
end
