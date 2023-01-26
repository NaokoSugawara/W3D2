
# Board
# The Board is responsible for keeping track of all your Cards. 
# You'll want a grid instance variable to contain Cards. 

# Useful methods:
# #populate should fill the board with a set of shuffled Card pairs
# #render should print out a representation of the Board's current state
# #won? should return true if all cards have been revealed.
# #reveal should reveal a Card at guessed_pos 
# (unless it's already face-up, in which case the method should do nothing). 
#     It should also return the value of the card it revealed (you'll see why later).

class Board

    def initialize(n)
        @grid = Array.new(n) { Array.new(n, "") }
        @card = Card.new
    end


    def [](position)
        row, column = position
        @grid[row][column]
    end

    def []=(position, val)
        row, column = position
        @grid[row][column] = val
    end

    def populate
        cards_num = @grid.flatten.size / 2
        cards_num.times do 
            card = ("A".."Z").to_a.sample
            2.times do 
                row = rand(0..@grid.length-1)
                col = rand(0..@grid.length-1)
                @grid[row][col] = card
            end
        end
    end

    def render
        @grid.each do |row| # has to be current state
            puts row.join(" ")
            # puts "\n"
        end
    end

    def reveal(position)
        row, col = position
        @grid[row][col] if @card.status == "down"
    end

    def won?
        return true if @grid.flatten.include?("")
        false
    end


    
end



