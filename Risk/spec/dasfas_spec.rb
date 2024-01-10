# frozen_string_literal: true

require 'rspec'
require_relative '../lib/community'

describe 'Dasfas' do
  context 'when condition' do
    it 'succeeds' do
      expect(Community.new.units.length).to be(0)
    end
  end
end
