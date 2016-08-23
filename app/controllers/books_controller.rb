class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = policy_scope(Book)
    @checkups = Checkup.all
  end

  def show
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    authorize @book
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


end
