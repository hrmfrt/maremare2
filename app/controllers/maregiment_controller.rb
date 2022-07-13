class MaregimentController < ApplicationController
  before_action :authenticate_user!

  def top
    @categories = Category.all
  end
end
