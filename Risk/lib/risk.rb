# frozen_string_literal: true

class Risk
  attr_reader :players
  attr_reader :all_communities
  
  def initialize
    @players = []
    @all_communities = self.Spain
  end
  
  def self.Spain
    [Community.new, Community.new]
  end

  def sit(doc)
    @players.push(doc)
  end
  
  def start
    players.each { |p| p.recruit(15)  }
    communities_to_distribute = 
  end
end
