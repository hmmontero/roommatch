class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @places = Place.all.order(created_at: :desc)
    if user_signed_in?
      compatible_users = User.find_compatible_users(current_user).select { |match| match[:match_percentage] >= 60 }.map { |match| match[:user] }
      @places = compatible_users.flat_map(&:places)
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @place = current_user.places.new
  end

  def edit
  end

  def create
    @place = current_user.places.new(place_params)

    if @place.save
      redirect_to @place, notice: 'Lugar creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

    if @place.update(place_params)
      redirect_to @place, notice: 'Lugar actualizado exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Lugar eliminado exitosamente.'
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:address, :available_rooms, :price, :title,
                                 :description, :place_typetype, :available_date,
                                 :latitude, :longitude)
  end

end
