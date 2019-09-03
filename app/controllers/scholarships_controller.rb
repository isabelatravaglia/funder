class ScholarshipsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]

  def index
    @scholarships = Scholarship.all
  end

  def favorite?(scholarship)
    true if current_user.favorites.find_by(scholarship: scholarship) != nil
  end
  helper_method :favorite?
end
