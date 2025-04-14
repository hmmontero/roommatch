class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    render :show_profile
  end

  def show_profile
    @user = current_user
    render :show_profile
  end

  def edit_profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    if @user.update(user_params)
      redirect_to user_profile_path, notice: 'Perfil actualizado correctamente.'
    else
      render :edit_profile, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :gender, :occupation, :bio, :avatar)
  end
end
