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

  def dictionary
    @category = Category.find(params[:id])
  end

  def modal
    @creaturephotos = Photo.where(creature_id: params[:id])
  end

end
