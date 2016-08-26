class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = policy_scope(Book)
    @checkups = Checkup.all
  end

  def show
    @checkups = @book.checkups
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    authorize @book
    @book.token = generate_token

    date = @book.circulation_date
    date_today = Date.today
    number_of_days = (date_today - date).to_i
    km_today = @book.initial_km.to_i
    @average_km = km_today / number_of_days.to_f
    @book.average_km = @average_km
    @book.save
    redirect_to books_path
  end

  def edit
  end

  def update
    @book.update(book_params)
    authorize @book
    redirect_to books_path
  end

  def destroy
    @book.destroy
    authorize @book
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:registration_plate, :initial_km, :initial_entry_into_service, :circulation_date)
  end

  def find_book
    @book = Book.find(params[:id])
    authorize @book
  end

  def generate_token
    token = SecureRandom.urlsafe_base64(nil, false).first(5)
  end

  def create_empty_array
    z = []
  end

  def pneus
     find_book
     create_empty_array
     a = @book.template.pneus_date.to_i

    if @book.template.pneus_km.to_i > @book.initial_km.to_i + @book.average_km.to_i * 365 ||
      @book.circulation_date + a * 365 - @book.circulation_date).to_i < 0
    end
  end


end
