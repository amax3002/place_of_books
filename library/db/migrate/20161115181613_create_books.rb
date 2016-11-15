class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :isbn
      t.text :description
      t.integer :reservation_user_id
      t.timestamps
    end
  end
end
