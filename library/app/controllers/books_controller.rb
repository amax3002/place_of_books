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
      redirect_to "/"
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

  # show form to edit an existing book # edit
  def edit
    @book = Book.find(params["id"])
    render :edit
  end

  # update a book based upon an id # update
  def update
    @book = Book.find(params["id"])
    @book.update(book_params)
    redirect_to "/"
  end

  def delete
    @book = Book.find(params["id"])
    @book.destroy
    redirect_to "/"
  end
end
