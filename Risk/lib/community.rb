# frozen_string_literal: true

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
