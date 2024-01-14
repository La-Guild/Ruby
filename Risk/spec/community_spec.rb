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
      expect(Player.new.owned_communities).to eq([])
    end
    it 'should ' do
      sut = Player.new
      sut.owns(Community.new)
      expect(sut.owned_communities).to_not eq([])
    end
  end

  context 'player units' do
    it 'should ' do
      sut = Player.new
      sut.recruit(1)
      expect(sut.non_deployed_units).to eq(1)
    end
  end
end
