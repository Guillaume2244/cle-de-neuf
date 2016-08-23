class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = Book.all
    @checkups = Checkup.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
    redirect_to books_path
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:registration_plate, :initial_km, :initial_entry_into_service, :circulation_date)
  end

  def find_book
    @book = Book.find(params[:id])
  end


end
