class ScholarshipsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]

  def index
    if params[:query].present?
      @results = Scholarship.search_by_name_institution_and_area(params[:query])
    else
      @results = Scholarship.all
    end
  end

  def show
    @scholarship = Scholarship.find(params[:id])
    @results = Scholarship.search_by_name_institution_and_area(params[:query])
  end

  def favorite?(scholarship)
    true if current_user.favorites.find_by(scholarship: scholarship) != nil
  end
  helper_method :favorite?

  private

  def scholarship_params
    params.require(:scholarship).permit(:name, :institution, :description, :photo)
  end

end
