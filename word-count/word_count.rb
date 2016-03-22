class Phrase
  VERSION = 1	
  def initialize str
    @statement = str
    @statement.tr!(':,.!&@$%^',' ')
  end

  def word_count
    arr = @statement.split("\s")
    word_hash = {}
    arr.each do |wo|
      len = wo.length	
      unless wo[0] =~ /[A-Za-z0-9]/ then
      	wo = wo[1,len-1]
      end
      unless wo[-1] =~ /[A-Za-z0-9]/ then
      	wo = wo[0,len-2]
      end

      if word_hash.key?(wo.downcase)
      	count = word_hash[wo.downcase]
      	count += 1
      	word_hash[wo.downcase] = count
      else
      	word_hash[wo.downcase] = 1
      end	
    end
    return word_hash
  end	
end	