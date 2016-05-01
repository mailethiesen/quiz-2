class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:book).permit(:title, :description, :author)
  end
end
 