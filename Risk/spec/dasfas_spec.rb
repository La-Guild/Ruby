# frozen_string_literal: true

require 'rspec'
require_relative '../lib/community'

describe 'Dasfas' do
  context 'when condition' do
    it 'succeeds' do
      expect(Community.new.units).to be(0)
    end
    it 'asdfasdf' do
      sut = Community.new
      sut.occupy_by(1)
      expect(sut.units).to be(1)
    end
    it 'should ' do
      sut = Community.new
      sut.occupy_by(2)
      expect(sut.units).to be(2)
    end
    it 'should asdfasdf' do
      sut = Community.new
      sut.occupy_by(2)
      sut.leave(2)
      expect(sut.units).to be(0)
    end
  end
end
