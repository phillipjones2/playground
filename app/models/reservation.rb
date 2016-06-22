class Reservation < ActiveRecord::Base

  def booked(params)
    Reservation.where(r_date:params[:r_date],r_time:params[:r_time]).count < 3
  end


end
