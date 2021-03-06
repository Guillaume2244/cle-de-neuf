class CheckupsController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @books = policy_scope(Book)
    @checkups = @book.checkups
  end

  def show
  end

  def new
    @checkup = Checkup.new
    @checkup_items = CheckupItem.all
    authorize @checkup
  end

  def create
    @book = Book.find(params[:book_id])
    @checkup = Checkup.new
    @checkup.km_ondate = checkup_params[:km_ondate]
    @checkup.checkup_item_id = checkup_params[:checkup_item].to_i
    @checkup.book = @book
    @checkup.facture = checkup_params[:facture]
    @checkup.done = true
    Checkup.where(checkup_item: checkup_params[:checkup_item].to_i, book: @book).each do |h|
      h.done = true
      h.save
    end
    if current_user.garagiste
        @checkup.garage = current_user.garages.first
    end
    authorize @checkup
    @checkup.save
    redirect_to book_path(@checkup.book)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def items
    authorize :checkup
    @checkup_items = CheckupItem.where(name: params[:checkup_item_category])
    render javascript: 'items'
  end

  private

  def checkup_params
    params.require(:checkup).permit(:effective_date, :km_ondate, :checkup_item, :facture, :facture_cache)
  end

end
