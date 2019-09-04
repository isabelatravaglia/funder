class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    if !current_user.profile_incomplete?
      @favorite = Favorite.new
      @favorite.user = current_user
      @favorite.scholarship = Scholarship.find(params[:scholarship_id])
      if @favorite.save
         respond_to do |format|
            format.html { redirect_to request.referrer }
            format.js  # <-- will render `app/views/reviews/create.js.erb`
          end
      else
          respond_to do |format|
              format.html { redirect_to edit_user_registration_path, notice: "Please fill in your profile to save a scholarship to your favorites!" }
              format.js  # <-- idem
          end
      end
    end
  end

  def destroy
    # @favorite = Favorite.where(user: current_user, scholarship: params[:scholarship_id]).first
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to :scholarships => :index
  end
end
