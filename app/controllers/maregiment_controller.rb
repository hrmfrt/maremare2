class MaregimentController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def top
    @categories = Category.all
  end
end
