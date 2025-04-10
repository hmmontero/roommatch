class DetailCompatibilitiesController < ApplicationController
  def show
    @compatibilities = Compatibility.all
  end

  def new
    @compatibilities = Compatibility.all
  end

  def create
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

  # def edit
  #   @detail_compatibility = DetailCompatibility.find(params[:id])
  # end

  # def update
  #   @detail_compatibility = DetailCompatibility.find(params[:id])
  #   if @detail_compatibility.update(product_params)
  #     redirect_to user_path(@user), notice: "Updated!"
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
end
