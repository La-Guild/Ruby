# frozen_string_literal: true

class Player
  attr_reader :owned_communities
  attr_reader :non_deployed_units

  def initialize
    @owned_communities = []
    @non_deployed_units = 0
  end

  def owns(community)
    @owned_communities.push(community)
  end

  def recruit(i)
    @non_deployed_units += i
  end

  def deploy_in(where, how_much)
    raise "no poseo esa comunidad" \
      unless @owned_communities.select { lambda { |x| x.name === where } }.any?
    raise "no tengo suficientes unidades" if @non_deployed_units < how_much
    @owned_communities
      .select { lambda { |x| x.name === where } }[0]
      .occupy_by(how_much)

    @non_deployed_units -= how_much
  end
end
