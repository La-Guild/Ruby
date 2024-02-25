class Bowling
    def initialize
        @frames = []
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
        @frames.push(Frame.new)
    end

    def roll(pins)
        @frames[0].roll(pins)
    end

    def score
        result = 0
        @frames.each { |f| result += f.score }

        result
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
