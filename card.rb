class Card
    attr_reader :value, :suit
    def initialize(value, suit)
        @value = value
        @suit = suit
    end
    
    def face
        case @value
        when 1
            "Ace"
        when 11
            "Jack"
        when 12
            "Queen"
        when 13
            "King"
        else @value.to_s
        end
    end

end