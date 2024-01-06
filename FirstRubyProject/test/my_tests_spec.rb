# frozen_string_literal: true
require 'rspec'
require_relative '../public/fizz_buzz'

# Devolver el mismo número si no es múltiplo de 3 ni 5
# Devolver Fizz si es múltiplo de 3
# Devolver Buzz si es múltiplo de 5
# Devolver FizzBuzz si es múltiplo de 3 y de 5

# Si la palabra contiene un 3 se añadie un Fizz adicional al final
# Si la palabra contiene un 5 se añadie un Buzz adicional al final

RSpec.describe 'MyRspecTest' do

  context 'when condition' do
    it 'aldjksfhajksfh' do
      expect(FizzBuzz.speak(1)).to be(1)
      expect(FizzBuzz.speak(3)).to eq("FizzFizz")
      expect(FizzBuzz.speak(5)).to eq("BuzzBuzz")
      expect(FizzBuzz.speak(15)).to eq("FizzBuzz")
    end
  end
end
