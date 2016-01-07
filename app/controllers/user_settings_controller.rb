class UserSettingsController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
    
  end

  def update
    sleep 1
    @user.update(user_params)
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:email, :username, :timezone)
    end
end