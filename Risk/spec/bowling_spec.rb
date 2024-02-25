# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bowling'

# Un juego tiene 10 frames
# Cada frame tiene 2 tiradas
# El objetivo de cada frame es tirar los 10 bolos
# La puntuación de un frame son los bolos que se han tirado
# La puntuación total es la suma de todos los frames
# Semipleno: los puntos de la siguiente tirada se suman a los 10 de esta
    # [5, 5], [6, 0] --> 16 + 6 = 22.
# Pleno: Se termina el frame y se suman los puntos de las dos siguientes tiradas
    # [10], [2, 0], [2, 0] --> 14 + 2 + 2 = 18.

# Pleno en el último frame: adsfsaffasdsa

describe 'Bowling' do

    it 'score is 0 by default' do
        sut = Bowling.new
        expect(sut.score).to be(0)
    end

    it 'score are first knocked down bowls' do
        sut = Bowling.new
        sut.roll(5)
        expect(sut.score).to be(5)
    end

    it 'score of frame is the sum of its rolls' do
        sut = Bowling.new
        sut.roll(5)
        sut.roll(4)
        expect(sut.score).to be(4+5)
    end

    it 'complete one frame and a half' do
        sut = Bowling.new
        sut.roll(5)
        sut.roll(3)
        sut.roll(4)
        expect(sut.score).to be(5 + 3 + 4)
    end

    it 'complete two frames' do
        sut = Bowling.new
        sut.roll(5)
        sut.roll(3)
        sut.roll(4)
        sut.roll(4)
        expect(sut.score).to be(5 + 3 + 4 + 4)
    end

    context 'Frame' do
        it 'is not finished by default' do
            sut = Frame.new
            expect(sut.is_finished?).to be(false)
        end

        it 'is not finised after first roll' do
            sut = Frame.new
            sut.roll(4)
            expect(sut.is_finished?).to be(false)
        end

        it 'is finised after 2 rolls' do
            sut = Frame.new
            sut.roll(4)
            sut.roll(3)
            expect(sut.is_finished?).to be(true)
        end
    end
end
