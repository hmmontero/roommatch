class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :accept, :decline]
  after_action :verify_authorized

  def show
    authorize @booking
    @message = Message.new
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(place: @place, user: current_user, status: :pending)
    authorize @booking

    if @booking.save
      redirect_to places_path, notice: "Solicitud enviada correctamente"
    else
      render places_path, status: :unprocessable_entity
    end
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to places_path, notice: "Actualizado correctamente"
    else
      render places_path, status: :unprocessable_entity
    end
  end

  def accept
    authorize @booking
    @booking.update(status: :approved)
  end

  def decline
    authorize @booking
    @booking.update(status: :rejected)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
