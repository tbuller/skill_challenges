class GrammarStats
    def initialize
      @counter = 0
      @counter2 = 0
    end
    
    def check(text) # text is a string
      if text[0].upcase == text[0] && text[-1] == "."
        @counter += 1
        @counter2 += 1
        return true
      else   
        @counter += 0
        @counter2 += 1
        return false
      end  
    end
  
    def percentage_good
      (@counter.to_f / @counter2.to_f) * 100
    end
end