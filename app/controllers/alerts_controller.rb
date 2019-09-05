class AlertsController < ApplicationController
  before_action :fetch_alerts, only:[:edit, :update, :delete, :change_notification_status]

  def new
    @alert = Alert.new
    load_areas_institutions
  end

  def create
    @alert = Alert.new(alert_params)
    @alert.user = current_user
    if @alert.save
      redirect_to user_path(current_user), notice: "Alert created!"
    else
      load_areas_institutions
      render :new
    end
  end

  def edit
    load_areas_institutions
  end

  def update
    if @alert.update(alert_params)
      redirect_to user_path(current_user), notice: "Alert updated!"
    else
      load_areas_institutions
      render :new
    end
  end

  def delete
    @alert.delete
    redirect_to user_path(current_user), notice: "Alert deleted!"
  end

  def change_notification_status
    scholarships = []
    @alert.notifications.each do |notification|
      notification.status = "read"
      notification.save
      scholarships << notification.scholarship_id
    end
    scholarships.reject { |x| x.nil? }
    params = {scholarship: scholarships}.to_query
    # query = Scholarship.where(id: scholarships)
    redirect_to scholarships_path({query: params})
    # redirect_to scholarships_path(params:'407')
  end

  private

  def fetch_alerts
    @alert = Alert.find(params[:id])
  end

  def load_areas_institutions
    @areas = Area.all.order(:name)
    @institutions = Institution.all.order(:name)
  end

  def alert_params
    params.require(:alert).permit(:name, :description, :area_id, :institution_id)
  end
end
