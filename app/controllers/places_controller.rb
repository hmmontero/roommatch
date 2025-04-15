class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  after_action :verify_policy_scoped, only: [:index, :my_places]
  after_action :verify_authorized, except: [:index, :my_places]


  def index
    @places = policy_scope(Place).order(created_at: :desc)

    compatible_users = User.find_compatible_users(current_user)
                           .select { |match| match[:match_percentage] >= 58 }
                           .map { |match| match[:user] }
    @places = compatible_users.flat_map(&:places)

    if params[:query].present?
      @places = @places.select do |place|
        place.title.downcase.include?(params[:query].downcase) ||
        place.address.downcase.include?(params[:query].downcase)
      end
    end

    if params[:place_type].present?
      @places = @places.select { |place| place.place_type == params[:place_type] }
    end

    if params[:city].present?
      @places = @places.select { |place| place.address.downcase.include?(params[:city].downcase) }
    end
  end

  def show
    authorize @place
    @booking = Booking.new
  end

  def new
    @place = current_user.places.new
    authorize @place
  end

  def create
    @place = current_user.places.new(place_params)
    authorize @place

    if @place.save
      redirect_to my_places_path, notice: 'Lugar creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @place
  end

  def update
    authorize @place
    if @place.update(place_params)
      redirect_to my_places_path, notice: 'Lugar actualizado exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @place
    @place.destroy
    redirect_to places_url, notice: 'Lugar eliminado exitosamente.'
  end

  def my_places
    @places = policy_scope(Place)
    @places = current_user.places

  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:address, :available_rooms, :price, :title,
                                 :description, :place_type, :available_date, photos: [])
  end
end
