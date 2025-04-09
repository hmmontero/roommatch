class BookingsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new
    @booking.place = @place
    @booking.status = :pending
    @booking.user = current_user

    if @booking.save
      redirect_to places_path, notice: "Solicitud enviada correctamente"
    else
      render places_path, status: :unprocessable_entity
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to places_path, notice: "Actualizado correctamente"
    else
      render places_path, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = :approved
    @booking.save
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = :rejected
    @booking.save
  end
end
