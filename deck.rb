require '/card_spec.rb'
require './card.rb'

class Deck
attr_reader :cards

    def initialize()
        @cards = []
        @value = (1..13)
        @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @value.each do |value|
            @suit.each do |suit|
                card = Card.new(value, suit)
                @cards << card
            end
        end
    end
def shuffle
    @deck = @cards.shuffle!
end
def draw
    index = rand(1..52)
    @cards.delete_at(index)
    return @cards[index]
end
end
deck = Deck.new
deck.shuffle