class FavoriteScholarshipsController < ApplicationController
  before_action :set_scholarship

  def create
    Favorite.create(favorited: @scholarship, user: current_user)
  end

  def destroy
    Favorite.where(favorited_id: @scholarship.id, user_id: current_user.id).first.destroy
  end

  private

  def set_scholarship
    @scholarship = Scholarship.find(params[:scholarship_id])
  end
end
