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
    fail
    @checkup = Checkup.new(checkup_params)
    @checkup.book = Book.find(params[:book_id])
    authorize @checkup
    @checkup.save
    redirect_to book_checkups_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def checkup_params
    params.require(:checkup).permit(:effective_date, :km_ondate, :checkup_item)
  end

end
