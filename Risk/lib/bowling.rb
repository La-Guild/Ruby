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
    def initialize
        @score = 0
        @rolls = 0
    end

    def roll(pins)
        @score += pins
        @rolls += 1
    end

    def is_finished?
        @rolls == 2
    end

    def score
        @score
    end
end
