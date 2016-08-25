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
    @books = Book.all
    @books.each do |book|
      if book.registration_plate == @garage.registration_plate && book.token == @garage.token
        @find = book
      end
    end
  end

  def edit
    @garage = Garage.find(params[:id])
    authorize @garage
  end

  def update
    @garage = Garage.find(params[:id])
    @garage.update(garage_params)
    authorize @garage
    redirect_to garages_path
  end

  private

  def garage_params
    params.require(:garage).permit(:name, :siret, :address, :city, :zip_code, :phone_number, :token, :registration_plate)
  end

end
