# frozen_string_literal: true

class Community
  attr_reader :units

  def initialize
    @units = 0
  end

  def occupy_by(how_much)
    @units += how_much
  end
end
