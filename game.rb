
class Game

    def initialize
        @board = Board.new(n)
        @pre_guessed_pos # if any
    end

    def play
        until game_over?
            # play game
            # render the board
            # prompt the player for input
            puts "Enter your position"
            # get a position
            user_input = gets.chomp.split.map(&:to_i)
            make_guess(user_imput)
        end
    end

    def make_guess(user_imput)
        #handle the actual memory/matching logic

    end

end

# Game
# The Game should have instance variable for the Board 
# and the previously-guessed position (if any). 
# It should also have methods for managing the Board-Player 
# interaction. You may want a play loop that runs 
# until the game is over. Inside the loop, 
# you should render the board, prompt the player for input, 
# and get a guessed pos. Pass this pos to a make_guess method, 
# where you will handle the actual memory/matching logic. 
# Some tips on implementing this:

# If we're not already checking another Card, 
# leave the card at guessed_pos face-up and 
# update the previous_guess variable.
# If we are checking another card, we should compare the Card 
# at guessed_pos with the one at previous_guess.
# If the cards match, we should leave them both face-up.
# Else, flip both cards face-down.
# In either case, reset previous_guess.
# It wouldn't be an interesting game if the player could see 
# their previous moves. Run system("clear") 
# before rendering the Board. This will hide 
# any previous output from the player. 
# sleep(n) will pause the program for n seconds.
#  Use this method to (temporarily) show the player 
#  an incorrect guess before flipping the Cards face-down again.

# AI
# Refactor game to include a HumanPlayer class
# Before actually implementing the computer player, 
# let's make things easier on ourselves and refactor 
# the game to accept player classes. In order to accomplish this, 
# move all of your user input logic into the player class. 
# I moved the following methods out of the Game class into the player:

# prompt
# get_input
# Before moving on, make sure your game runs successfully with a HumanPlayer.

# Create a ComputerPlayer class
# The computer player's strategy should be as follows:

# On its first guess, if it knows where 2 matching cards are, 
# guess one of them, otherwise guess randomly among cards 
# it has not yet seen.
# On its second guess, if its first guess revealed a card 
# whose value matches a known location, guess that location, 
# otherwise guess randomly among cards it has not yet seen.
# Now comes the tricky part. With the HumanPlayer, 
# we didn't need to explicitly receive the data from the card 
# we're flipping over; we just read it off the terminal output. 
# The computer won't be quite so savvy. 
# Let's write some methods to have it accept 
# the revealed card information from the game:

# receive_revealed_card should take in a position and 
# the value of the card revealed at that location. 
# It should then store it in a @known_cards hash.
# receive_match should take in two positions which are a successful match. 
# I stored these in an instance variable @matched_cards
# The game should then call these methods on the player 
# in addition to displaying the revealed cards to the terminal.

# NB: The game shouldn't have to know whether a human 
# or computer is playing. Instead, it should use duck typing. 
# (See today's reading on Duck Typing.) 
# This may involve writing some "dummy" methods on the HumanPlayer class. 
# That's ok.

# Bonus
# Come back to this after you finish Sudoku!

# Implement a simple command-line interface, 
# allowing the user to determine the difficulty of the game 
# (i.e., the size of the board). 
# Do this before the Game is initialized. Remember if __FILE__ == $PROGRAM_NAME!
# Enforce an upper limit on the number of turns played. 
# If the limit is exceeded, the player loses.
# Let's add a twist: start the game 
# by placing a certain number of "bombs" instead of normal cards. 
# When the game starts, show the bombs for 5 seconds or so; 
# then hide them. If the player reveals a bomb, the game ends. 
# (If you feel this is too harsh, p
# erhaps you can implement "lives" or "hit points"). 
# You might also want to determine the bomb count as a function of board size.
# We've already got a working "Match 2" puzzle. 
# What about a "Match 3" or "Match 4"? 
# Generalize your code to work for any number of matching cards.