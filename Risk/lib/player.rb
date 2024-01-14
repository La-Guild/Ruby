# frozen_string_literal: true

class Player
  attr_reader :owned_communities

  def initialize
    @owned_communities = []
  end

  def owns(community)
    @owned_communities.push(community)
  end
end
