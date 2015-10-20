module FunWithStrings
  def palindrome?
      init=self
      s1 = init.reverse.downcase 
      s2 = init.downcase 
      if s1 == s2 
        a = true 
      else 
        a = false 
      end 
      return a 
  end
  def count_words(string)
    filtered = string.downcase.gsub(/[^a-zA-Z ]/, "")  
		c = filtered.split(" ")   
		counts = Hash.new   
		c.each { |x|    
			if (counts.has_key?(x))  
				counts[x] += 1;
			else
				counts[x] = 1;
			end
		}
		return counts   
  end

  def anagram_groups
    hash = Hash.new
    init = self
    if init.empty?
      return []
    end
    s = init.split(/[^\w]/)
    s.each do |x|
      sort = x.split("").sort.join
      if hash[sort] == nil
        hash[sort] = [x]
      else
        hash[sort] << x
      end
    end
    result = []
    hash.each_value do |y|
      result << y
    end
    return result
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
