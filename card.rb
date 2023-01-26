
Card
A Card has two useful bits of information: 
its face value, and whether it is face-up or face-down. 
You'll want instance variables to keep track of this information. 

You'll also want a method to display information about the card: 
nothing when face-down, or its value when face-up. 
I also wrote #hide, #reveal, #to_s, and #== methods.

Common problem: Having issues with #hide and #reveal? 
Review the Testing Small (from Memory Puzzle) reading in the sidebar.

class Card

    def initialize(value, status)
        @value = value
        @status = status
        @status_changes = []
    end

    def display 
        if @status == up
            puts @value
        else 
            puts ""
        end
    end

    def hide
        
    end

    def reveal

    end

    def to_s(value)

    end

    def ==(value)

    end

end