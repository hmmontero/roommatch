class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :ensure_detail_compatibilities_completed, unless: :skip_ensure_detail_compatibilities?

  include Pundit::Authorization

  after_action :verify_authorized, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [:first_name, :last_name, :birth_date, :gender, :ocupation]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:first_name, :last_name, :birth_date, :gender, :occupation]
    )
  end

  def ensure_detail_compatibilities_completed
    return unless current_user
    return if request.path == new_detail_compatibility_path || controller_name == "detail_compatibilities"

    if current_user.detail_compatibilities.empty?
      redirect_to new_detail_compatibility_path, alert: "Primero completa tus preferencias para comenzar a usar RoomMatch."
    end
  end

  def after_sign_in_path_for(resource)
    if resource.detail_compatibilities.empty?
      new_detail_compatibility_path
    else
      super
    end
  end

  def after_sign_up_path_for(resource)
    new_detail_compatibility_path
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def skip_ensure_detail_compatibilities?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/ || controller_name == "detail_compatibilities"
  end

  def user_not_authorized
    flash[:alert] = "No estás autorizado para acceder a esta página."
    redirect_to(request.referer || root_path)
  end
end
