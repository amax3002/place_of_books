class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to "/books"
    else
      render :new
    end
  end

  def book_params
    params.require(:book).permit(:name, :isbn, :description)
  end

  def detail
    @book = Book.find(params["id"])
  end
end
