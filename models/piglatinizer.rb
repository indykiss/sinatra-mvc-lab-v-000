

class PigLatinizer
  attr_accessor :string 
  @@all = []
  
  def initiatlize(string=nil)
    @string = string 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def piglatinize(user_input)
    string_array = user_input.split(" ")
    constants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
    
    string_array.map do |word|
    if vowels.include?(word[0]) 
        word + "way"
        elsif constants.include?(word[0]) && constants.include?(word[1]) && constants.include?(word[2])
          word[3..-1] + word[0..2] + "ay"
           elsif constants.include?(word[0]) && constants.include?(word[1])
              word[2..-1] + word[0..1] + "ay"
              elsif constants.include?(word[0])
                word[1..-1] + word[0] + "ay"
                
                #I'm not passing the last test because of the word He not translating :(#
                  elsif constants.include?(word[0]) && vowels.include?(word[1])
                    word[1..-1] + word[0] + "ay"
          end 
      end.join(" ")   
    end

end 