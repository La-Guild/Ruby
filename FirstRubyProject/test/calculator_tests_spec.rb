# frozen_string_literal: true
require 'rspec'
require_relative '../public/calculator'

RSpec.describe 'MyRspecTest' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it '2 + 1' do
      expect(Calculator.add(2, 1)).to be(3)
    end
    it '2 + 5 fails' do
      expect(Calculator.add(2,5)).to be(4)
    end
  end
end
