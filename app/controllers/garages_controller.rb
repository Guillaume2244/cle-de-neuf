class GaragesController < ApplicationController

  def new
    @garage = Garage.new
    authorize @garage
  end

   def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    authorize @garage
    if @garage.save
      redirect_to garages_path
    else
     render :new
   end
  end

  def index
    @garages = policy_scope(Garage)
    @garage = @garages.first
    @checkups = @garage.checkups
  end

  private

  def garage_params
    params.require(:garage).permit(:name, :siret, :address, :city, :zip_code, :phone_number)
  end
end
