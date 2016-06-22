class RemoveReservationDateTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :reservation_datetime, :datetime
    remove_column :reservations, :reservation_date, :date
    remove_column :reservations, :reservation_time, :time

    add_column :reservations, :reservation_date, :string
    add_column :reservations, :reservation_time, :string

  end
end
