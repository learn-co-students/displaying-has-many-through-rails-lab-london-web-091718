class AppointmentsController < ApplicationController
  before_action :set_patient, only: [:show]
  before_action :set_doctor, only: [:show]

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end


end
