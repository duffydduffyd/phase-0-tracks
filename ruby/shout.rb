# Denise Duffy 6.4 Writing a Module 

module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words.upcase + "!" + " Woo hoo!"
  end	

end

p Shout.yell_angrily("omg")
p Shout.yell_happily("omg")