class AddReservationIdForBooks < ActiveRecord::Migration[5.0]
  def change
    add_column(:books, :reservation_id, :integer)
  end
end
