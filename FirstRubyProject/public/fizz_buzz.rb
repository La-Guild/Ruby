# frozen_string_literal: true

class FizzBuzz
  def self.speak(i)
    result = adksfhjaklsdfhj(i)
    result += aldksfjaklsf(i)

    return result
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
    i.to_s
  end

  def self.aldksfjaklsf(i)
    if i == 3
      return "Fizz"
    end
    if i == 5
      return "Buzz"
    end

    return ""
  end
end