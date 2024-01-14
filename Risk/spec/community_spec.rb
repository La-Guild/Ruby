# frozen_string_literal: true

require 'rspec'
require_relative '../lib/community'
require_relative '../lib/player'

describe 'Community' do
  context 'when being occupied' do
    it 'is empty by default' do
      expect(Community.new.units).to be(0)
    end
    it 'can be occupied by one unit' do
      sut = Community.new
      sut.occupy_by(1)
      expect(sut.units).to be(1)
    end
    it 'can be occupied by several units' do
      sut = Community.new
      sut.occupy_by(2)
      expect(sut.units).to be(2)
    end
    it 'can be left by units' do
      sut = Community.new
      sut.occupy_by(2)
      sut.leave(2)
      expect(sut.units).to be(0)
    end
  end
  context 'owned by player' do
    it 'should ' do
      expect(Player.new().owned_communities).to eq([])
    end
  end
end
