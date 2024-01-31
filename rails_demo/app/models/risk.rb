class Risk < ApplicationRecord
  attr_reader :players
  attr_reader :all_communities

  def initialize(attributes = {}, options = {})
    @players = []
    @all_communities = spain
  end

  def spain
    [Community.new("Murcia"), Community.new("Andalucía")]
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

class Community
  attr_reader :units
  attr_reader :name

  def initialize(name = "")
    @units = 0
    @name = name
  end

  def occupy_by(how_much)
    @units += how_much
  end

  def leave(i)
    raise "no puedes irte si no estás" if i > units

    @units -= i
  end
end

class Player
  attr_reader :owned_communities
  attr_reader :recruited_units

  def initialize
    @owned_communities = []
    @recruited_units = 0
  end

  def owns(community)
    @owned_communities.push(community)
  end

  def recruit(i)
    @recruited_units += i
  end

  def deploy_in(where, how_much)
    raise "no poseo esa comunidad" \
      unless @owned_communities.select { lambda { |x| x.name === where } }.any?
    raise "no tengo suficientes unidades" if @recruited_units < how_much
    @owned_communities
      .select { lambda { |x| x.name === where } }[0]
      .occupy_by(how_much)

    @recruited_units -= how_much
  end
end

