# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update, keys: %i[first_name last_name starting_weight]
    )

    devise_parameter_sanitizer.permit(
      :sign_up, keys: %i[first_name last_name starting_weight]
    )
  end
end
