class UsersController < ApplicationController

 before_action :set_user, only: [:edit, :index]


  def index
  end

  def edit
    @user.update(user_params_for_edit)
  end


  private

  def user_params_for_edit
    params.require(:user).permit(:last_name, :first_name, :phone_number)
  end



  def set_user
    @user = current_user
  end
end


