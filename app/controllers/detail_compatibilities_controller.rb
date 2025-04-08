class DetailCompatibilitiesController < ApplicationController
  def show
    @detail_compatibilities = DetailCompatibility.find(params[:id])
  end

  def new
    @detail_compatibility = DetailCompatibility.new
  end

  def create
    @detail_compatibility = DetailCompatibility.find(params[:id])
    
    if @detail_compatibility.save
      redirect_to user_path(@user)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def edit
    @detail_compatibility = DetailCompatibility.find(params[:id])
  end

  def update
    @detail_compatibility = DetailCompatibility.find(params[:id])
  end

  private

  def params_detail_compatibilities
    params.require(:detailCompatibility).permit()
  end
end
