# frozen_string_literal: true

class Community
  attr_reader :units

  def initialize
    @units = []
  end

  def occupy_by(i)
    units.push(1)
  end
end
