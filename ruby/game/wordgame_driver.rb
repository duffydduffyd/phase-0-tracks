

require_relative 'wordgame.rb'

new_game = Wordgame.new('thisisMyword')

game_test = new_game.hash_maker("thisismyword")
p game_test

p new_game.getter_mystery_word 
p new_game.mysteryword_array_getter
p new_game.map_letter_to_underscore
p new_game.display_underscore_getter
p new_game.user2_input("s") 
p new_game.guess_the_word("titanic")
p new_game.map_guess_to_letter("s")
p map_guess_to_letter("s")

p new_game.hash_maker("thisismyword")