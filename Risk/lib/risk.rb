# frozen_string_literal: true

class Risk
  attr_reader :players
  attr_reader :all_communities
  
  def initialize
    @players = []
    @all_communities = spain
  end
  
  def spain
    [Community.new, Community.new]
  end

  def sit(doc)
    @players.push(doc)
  end
  
  def start
    players.each { |p| p.recruit(15)  }
    @all_communities.each { |c| players[0].owns(c) }
  end
end
