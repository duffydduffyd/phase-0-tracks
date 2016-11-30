# Denise Duffy 6.4 Writing a Module 

module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words.capitalize + "!" + "woo hoo!"
  end	

end