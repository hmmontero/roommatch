class DetailCompatibilitiesController < ApplicationController
  def show
    authorize DetailCompatibility
    @compatibilities = Compatibility.all
  end

  def new
    authorize DetailCompatibility
    @compatibilities = Compatibility.all
  end

  def create
    authorize DetailCompatibility
    @compatibilities = params[:compatibilities] || 0
    if @compatibilities.size < 10
      @compatibilities = Compatibility.all
      flash.now[:alert] = "Debes seleccionar al menos 10 compatibilidades."
      render :new, status: :unprocessable_entity
    else
      @compatibilities.each do |c|
        DetailCompatibility.create(compatibility_id: c, user: current_user)
      end
      redirect_to root_path
    end
  end

  def edit
    @detail_compatibility = DetailCompatibility.find(params[:id])
    authorize @detail_compatibility
    @compatibilities = Compatibility.all
  end

  def update_user_preferences
    authorize DetailCompatibility
    selected_ids = params[:compatibilities] || []

    if selected_ids.size < 10
      flash.now[:alert] = "Debes seleccionar al menos 10 compatibilidades."
      @compatibilities = Compatibility.all
      render :edit, status: :unprocessable_entity
    else
      current_user.compatibility_ids = selected_ids
      flash[:notice] = "Preferencias actualizadas correctamente."
      redirect_to places_path
    end
  end

  private

  def detail_compatibility_params
    params.require(:detail_compatibility).permit(:compatibility_id, :user_id)
  end
end
