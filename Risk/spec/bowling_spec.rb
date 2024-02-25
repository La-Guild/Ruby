# frozen_string_literal: true

require 'rspec'
require_relative '../lib/player'
require_relative '../lib/risk'

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

end 
