class Bowling
    def initialize
        @score = 0
    end

    def roll(pins)
        @score += pins
    end

    def score
        @score
    end
end

class Frame
    @score = 0

    def roll(pins)
        @score += pins
    end

    def is_finished?
        false
    end

    def score
        @score
    end
end
