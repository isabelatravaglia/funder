class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.scholarship = params(:scholarship_id)
  end
end
