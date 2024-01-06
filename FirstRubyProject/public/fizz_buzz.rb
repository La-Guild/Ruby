# frozen_string_literal: true

class FizzBuzz

  def self.speak(i)
    if i % 3 == 0
      return "Fizz"
    end
    if i % 5 == 0
      return "Buzz"
    end
    i
  end
end