class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.scholarship = Scholarship.find(params[:scholarship_id])
    @favorite.save
    redirect_to scholarships_path
  end

  def destroy
    # @favorite = Favorite.where(user: current_user, scholarship: params[:scholarship_id]).first
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to scholarships_path
  end
end
