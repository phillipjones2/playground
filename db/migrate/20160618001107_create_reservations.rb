class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :reservation_datetime
      t.date :reservation_date
      t.time :reservation_time


      t.timestamps null: false
    end
  end
end
