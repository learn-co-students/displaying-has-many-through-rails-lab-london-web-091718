class DoctorsController < ApplicationController


  def new
    @doctor=Doctor.new
  end

  def create
    @doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors=Doctor.all
  end

  def edit
    @doctor=Doctor.find(params[:id])
  end

  def update
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def delete
    @doctor=Doctor.find(params[:id])
  end


  private
  def doctor_params
    params.require(:doctor).permit(:name,:department)
  end


end
