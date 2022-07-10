class MaremareAquariumController < ApplicationController

  def top
    @categories = Category.all
  end

  def column
  end

  def information

  end

  def writer
  end

  def creature
    @creature = Creature.find(params[:id])
    @creaturephotos = Photo.where(creature_id: params[:id])
  end

  def dictionary
    @category = Category.find(params[:id])
  end

  def modal
    @creature = Creature.find(params[:id])
    @creaturephotos = Photo.where(creature_id: params[:id])
  end

end
