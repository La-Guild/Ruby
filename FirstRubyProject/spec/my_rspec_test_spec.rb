# frozen_string_literal: true
require 'rspec'

RSpec.describe 'MyRspecTest' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'succeeds' do
      expect(1).to be(1)
    end
    it 'fails' do
      expect(1).to be(2)
    end
  end
end
