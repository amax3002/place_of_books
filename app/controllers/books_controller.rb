class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    @book = Book.new
  end

  def new_reservation
    @book = Book.find(params["id"])
    @reservation = @book.reservations.build()
    render :new_reservation
  end

  def create_reservation
    @book = Book.find(params["id"])
    @reservation = @book.reservations.build()

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
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

  def reservation_params
    params.require(:reservation).permit(:user_name, :book_id, :due_date)
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
    @reservations = Reservation.where(book_id: Book.find(params["id"]))
  end
end
