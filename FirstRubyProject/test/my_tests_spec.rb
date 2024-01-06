# frozen_string_literal: true
require 'rspec'
require_relative '../public/fizz_buzz'

# Devolver el mismo número si no es múltiplo de 3 ni 5
# Devolver Fizz si es múltiplo de 3
# Devolver Buzz si es múltiplo de 5
# Devolver FizzBuzz si es múltiplo de 3 y de 5

RSpec.describe 'MyRspecTest' do

  context 'when condition' do
    it 'succeeds' do
      expect(FizzBuzz.speak(1)).to be(1)
      expect(FizzBuzz.speak(3)).to be("Fizz")
      expect(FizzBuzz.speak(5)).to be("Buzz")
      expect(FizzBuzz.speak(15)).to be("FizzBuzz")
    end
  end
end
