# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'
require_relative '../lib/risk'

describe 'Risk_spec' do
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
      doc = Player.new

      sut.sit(doc)
      sut.start

      expect(doc.owned_communities.length).not_to be(0)
    end
  end
end
