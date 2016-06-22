class RemoveReservationTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :reservation_date, :string
    remove_column :reservations, :reservation_time, :string

    add_column :reservations, :r_date, :string
    add_column :reservations, :r_time, :string
  end
end
