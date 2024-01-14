# frozen_string_literal: true

class Player
  attr_reader :owned_communities

  def owned_communities
    []
  end

  def asdfasfd(community)
    @owned_communities.push(community)
  end
end
