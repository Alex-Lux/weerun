class CreateRunBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :run_bookings do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :run, foreign_key: true

      t.timestamps
    end
  end
end
