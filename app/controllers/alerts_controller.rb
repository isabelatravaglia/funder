class AlertsController < ApplicationController
  def new
    @alert = Alert.new
    load_areas_institutions
  end

  def create
    @alert = Alert.new(alert_params)
    @alert.user = current_user
    if @alert.save
      redirect_to user_path(current_user)
    else
      load_areas_institutions
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def load_areas_institutions
    @areas = Area.all.order(:name)
    @institutions = Institution.all.order(:name)
  end

  def alert_params
    params.require(:alert).permit(:name, :description, :area_id, :institution_id)
  end
end
