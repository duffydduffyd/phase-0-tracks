# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

    require_relative 'wordgame.rb'

describe Wordgame do
  let(:wordgame) { Wordgame.new("Running") }
 
	it "returns the mystery word taken on intialization downcased" do
    expect(wordgame.getter_mystery_word).to eq "running"
  end

  

end   