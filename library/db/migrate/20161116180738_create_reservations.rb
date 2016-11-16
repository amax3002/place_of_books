class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :user_name
      t.integer :book_id
      t.date :due_date
      t.date :return_date
      t.boolean :checked_out

      t.timestamps
    end
  end
end
