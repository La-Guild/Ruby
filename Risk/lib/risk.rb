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
    @players.each { |p| p.recruit(15)  }

    distribute_all_communities_among_players
  end

  def distribute_all_communities_among_players
    player_index = 0
    @all_communities.each do |c|
      @players[player_index].owns(c)
      player_index +=1
      player_index = 0 if player_index >= @players.length
    end
  end
end
