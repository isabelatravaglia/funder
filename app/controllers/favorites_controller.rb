class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    if !current_user.profile_incomplete?
      @favorite = Favorite.new
      @favorite.user = current_user
      @favorite.scholarship = Scholarship.find(params[:scholarship_id])
      @favorite.save

      # if current_page?(scholarship_path(@favorite.scholarship))
      #   redirect_to scholarship_path(scholarship)
      # else
      redirect_to scholarships_path
      # end
    else
      redirect_to edit_user_registration_path, notice: "Please fill in your profile to save a scholarship to your favorites!"
    end
  end

  def destroy
    # @favorite = Favorite.where(user: current_user, scholarship: params[:scholarship_id]).first
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to scholarships_path
  end
end
