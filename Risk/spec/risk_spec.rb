# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'
require_relative '../lib/risk'

describe 'Risk_spec' do
  context 'Risk' do
    it 'should ' do
      sut = Risk.new
      doc = Player.new

      sut.sit(doc)
      sut.start

      expect(doc.recruited_units).to be(15)
    end
  end
end
