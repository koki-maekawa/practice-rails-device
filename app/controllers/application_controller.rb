class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    user_path(current_user)
  end

  #  The path used after sign in.
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
end
