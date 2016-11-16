class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def reservation_params
    params.require(:reservation).permit(:user_name, :book_id, :due_date)
  end

  def show
    @reservation = Reservation.find(params["id"])
  end

  # show form to edit an existing reservation # edit
  def edit
    @reservation = Reservation.find(params["id"])
    render :edit
  end

  # update a reservation based upon an id # update
  def update
    @reservation = Reservation.find(params["id"])
    @reservation.update(reservation_params)
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.find(params["id"])
    @reservation.destroy
    redirect_to reservations_path
  end
end
