# frozen_string_literal: true

require 'rspec'
require_relative '../lib/community'

describe 'Dasfas' do
  context 'when condition' do
    it 'succeeds' do
      expect(Community.new.units.length).to be(0)
    end
    it 'asdfasdf' do
      sut = Community.new
      sut.occupy_by(1)
      expect(sut.units.length).to be(1)
    end
  end
end
