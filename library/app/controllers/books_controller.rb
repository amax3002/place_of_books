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
      redirect_to books_path
    else
      render :new
    end
  end

  def book_params
    params.require(:book).permit(:name, :isbn, :description)
  end

  def show
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
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params["id"])
    @book.destroy
    redirect_to books_path
  end

  def reservations

  end
end

----

def create
  post "/reservations" do
    @reservation = Reservation.new(params["reservation"])
    if @reservation.save
      redirect "/books/#{@reservation.book_id}"
    else
      erb :"reservations/new.html", layout: :"layout/application.html"
    end
  end
end
