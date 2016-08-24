class GaragesController < ApplicationController
  def show
    @garage = Garage.where(user: current_user).first
    authorize @garage
  end
end
