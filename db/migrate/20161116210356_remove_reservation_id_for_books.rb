class RemoveReservationIdForBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column(:books, :reservation_id)
  end
end
