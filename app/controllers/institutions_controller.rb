class InstitutionsController < ApplicationController

  before_action :set_institution, only: [:show, :edit, :update, :destroy]


  def index
    @institutions = Institution.all

  end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(institution_params)
    @institution.user = current_user
    if @institution.save
      redirect_to institutions_path

    end
  end

  def edit
  end

  def update
    @institution.update(institution_params)
  end

  def show
  end

  def destroy
    @institution.destroy
  end

  private

  def set_institution
    @institution = Institution.find(params[:id])
  end

  def institution_params
    params.require(:institution).permit(:name, :city, :country, :ranking, :photo)
  end
end


