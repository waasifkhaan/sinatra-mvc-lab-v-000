class PigLatinizer
  attr_accessor :text
 
  def piglatinize(text)
    word=text.split("")
    
    while(!vowel(word[0])) do
      
      first_letter = word[0]
      
        word.each_index do |i|
          word[i] = word[i+1]
        end 
        word[word.length-1]=first_letter
        
    end 
    word.join + "ay" 
  
  end
  
  def vowel(letter)
    if letter == ("a"||"e"||"i"||"o"||"u")
      true 
    end
  end 
    
  
  
  
end 