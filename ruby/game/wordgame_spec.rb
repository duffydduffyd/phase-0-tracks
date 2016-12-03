# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

    require_relative 'wordgame.rb'

describe Wordgame do
  let(:newgame) { Wordgame.new("thisisMyword") }
 
	it "returns the mystery word taken on intialization downcased" do
    expect(newgame.getter_mystery_word).to eq "thisismyword"
  end

  it "returns an array with the word taken on initialization" do
  	expect(newgame.mysteryword_array_getter).to eq ["t", "h", "i", "s", "i", "s", "m", "y", "w", "o", "r", "d"]
  end

  it "maps the mystery word array to underscores" do 
  	expect(newgame.map_letter_to_underscore). to eq ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
  end

  it "it returns in user2's letter" do 
  	expect(newgame.user2_input("s"))
  end

end

  



# # describe Game do
#   it "can check the accuracy of a guess" do
#     game = Game.new("mycode")
#     expect(game.guess("mycode").to eq true
#   end