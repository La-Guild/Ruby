# frozen_string_literal: true

class FizzBuzz
  def self.speak(i)
    result = word_of_multiple(i)
    result += all_words_per_digit(i)
    return result
  end

  def self.word_of_multiple(i)
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

  def self.all_words_per_digit(i)
    result = ""
    i.to_s.each_char { |x| result += word_of_digit(x) }
    result
  end

  def self.word_of_digit(i)
    if i == "3"
      return "Fizz"
    end
    if i == "5"
      return "Buzz"
    end
    return ""
  end

end