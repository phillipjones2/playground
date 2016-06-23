class Reservation < ActiveRecord::Base
  before_save :check_availability


  private

  def check_availability
    reservation_count = Reservation.where(r_date:self.r_date,r_time:self.r_time).count
    if reservation_count >= 3
      return false
    end
  end

end
