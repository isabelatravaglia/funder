class UsersController < ApplicationController

  def show
    @user = current_user
    # @user = User.find(user_params)
  end

  def edit

  end

  def update

  end

  private

  def user_params

  end
end
