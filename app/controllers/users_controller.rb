class UsersController < ApplicationController

 before_action :set_user, only: [:edit, :index]


  def index
  end

  def edit
    @user.update(user_params)
  end

  def new
  end



  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :phone_number, :mecanicien)
  end

  def set_user
    @user = current_user
  end
end


