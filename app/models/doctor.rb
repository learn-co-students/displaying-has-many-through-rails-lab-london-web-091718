class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  #def schedule
  #  self.appointments.map { |a| a.appointment_datetime.strftime("%B %e, %Y at %R") }
  #end
end
