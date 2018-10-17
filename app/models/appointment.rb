class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable
      self.appointment_datetime.strftime("%B %e, %Y at %R")
  end
end
