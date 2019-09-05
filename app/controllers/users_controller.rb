class UsersController < ApplicationController

  def show
    @user = current_user
    @sorted_alerts = current_user.alerts.order("notif_count desc nulls last")
  end

  def edit

  end

  def update

  end

  private

  def user_params

  end
end
