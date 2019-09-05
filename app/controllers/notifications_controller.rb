class NotificationsController < ApplicationController
  def create
  end

  def update
    raise
    @alert = Alert.find(params[:alert_id])
    @notification = Notification.find()
  end
end
