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

        @current_frame = 0
    end

    def roll(pins)
        @frames[@current_frame].roll(pins)

        @current_frame += 1 if @frames[@current_frame].is_finished?
    end

    def score
        result = 0

        counter = 0
        while counter < @frames.length
            result += asdfjasdflk(counter)
            counter += 1
        end

        result
    end

    def asdfjasdflk(index)
        if @frames[index].strike?
            return @frames[index].score +
                @frames[index+1].score +
                @frames[index+2].score
        end

        if @frames[index].spare?
            return @frames[index].score +
                @frames[index+1].score
        end

        @frames[index].score
    end
end

class Frame
    def initialize
        @score = 0
        @rolls = 0
    end

    def roll(pins)
        raise 'frames currently only support 2 rolls' if is_finished?
        @score += pins
        @rolls += 1
    end

    def is_finished?
        @rolls == 2 or strike?
    end

    def score
        @score
    end

    def strike?
        @score >= 10 and @rolls == 1
    end

    def spare?
        @score == 10 and @rolls == 2
    end
end
