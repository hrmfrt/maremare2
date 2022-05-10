class MaremareAquariumController < ApplicationController

  def top
  end

  def column
  end

  def information
    @ponyo = Creature.find(6)
  end

  def writer
  end

  def dictionary
    @ponyo = Creature.find(7)
  end


end
