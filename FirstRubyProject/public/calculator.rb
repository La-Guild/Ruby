# frozen_string_literal: true

class Calculator
  def self.add(one, two)
    one == 1 ? two : one + two 
  end

  def add_from_instance(one, two)
    one + two
  end
end