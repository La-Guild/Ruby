# frozen_string_literal: true

class Risk
  attr_reader :players

  def initialize
    @players = []
  end

  def sit(doc)
    @players.push(doc)
  end
  
  def start
    players.each { |p| p.recruit(15)  }
  end
end
