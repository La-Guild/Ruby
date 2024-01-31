class RisksController < ApplicationController
  def index
  end

  def show
    @risk = Risk.new
    @risk.sit(Player.new)
    @risk.start
  end
end
