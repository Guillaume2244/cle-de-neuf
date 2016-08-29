class UsersController < ApplicationController

 before_action :set_user, only: [:edit, :index]


  def index
  end

  def edit

  end




  private



  def set_user
    @user = current_user
  end

end


