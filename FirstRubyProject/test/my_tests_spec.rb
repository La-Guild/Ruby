# frozen_string_literal: true
require 'rspec'

# Devolver el mismo número si no es múltiplo de 3 ni 5
# Devolver Fizz si es múltiplo de 3
# Devolver Buzz si es múltiplo de 5
# Devolver FizzBuzz si es múltiplo de 3 y de 5

RSpec.describe 'MyRspecTest' do

  context 'when condition' do
    it 'succeeds' do
      expect(1).to be(1)
    end
    it 'fails' do
      expect(1).to be(2)
    end
  end
end
