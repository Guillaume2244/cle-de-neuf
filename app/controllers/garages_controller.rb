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

  def show
    @garage_coordinates = { lat: @garage.latitude, lng: @garage.longitude }
  end

  def edit
    @garage = Garage.find(params[:id])
    authorize @garage
  end

  def update
    @garage = Garage.find(params[:id])
    @garage.update(garage_params)
    authorize @garage
    @books = Book.all
    @books.each do |book|
      if book.registration_plate == @garage.registration_plate && book.token == @garage.token
        @find = book
        flash[:notice] = "Successfully created..."
      redirect_to book_path(@find)
      else
        flash[:alert] = "The registration plate and/or the token given is/are wrong"
        render :edit
        return
      end
    end
  end

  private

  def garage_params
    params.require(:garage).permit(:name, :siret, :street, :city, :zip_code, :phone_number, :token, :registration_plate)
  end

end
