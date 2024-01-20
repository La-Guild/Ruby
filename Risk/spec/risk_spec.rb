# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'
require_relative '../lib/risk'
require_relative '../lib/community'

describe 'Risk' do
  context 'Risk' do
    it 'distributes units to players' do
      sut = Risk.new
      doc = Player.new

      sut.sit(doc)
      sut.start

      expect(doc.recruited_units).to be(15)
    end

    it 'distributes communities to players' do
      sut = Risk.new
      player1 = Player.new
      player2 = Player.new

      sut.sit(player1)
      sut.sit(player2)
      sut.start

      expect(player1.owned_communities.length).not_to be(0)
      expect(player2.owned_communities.length).not_to be(0)
    end
  end
end
