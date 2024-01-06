# frozen_string_literal: true

class FizzBuzz
  def self.speak(i)
    adksfhjaklsdfhj(i)
  end

  def self.adksfhjaklsdfhj(i)
    if i % 3 == 0 && i % 5 == 0
      return "FizzBuzz"
    end
    if i % 3 == 0
      return "Fizz"
    end
    if i % 5 == 0
      return "Buzz"
    end
    i
  end
end