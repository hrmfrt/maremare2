class MaregimentController < ApplicationController

  def top
    @categories = Category.all
  end
end
