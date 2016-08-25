class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :garagiste])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /^(active_)?admin/
  end

  def after_sign_in_path_for(resource)
    if current_user.garagiste
    "/garages/show"
    else
     books_path
    end
  end

  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource)
  end

end




