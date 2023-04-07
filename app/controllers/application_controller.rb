class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

   # ログイン後に遷移するpathを設定
  def after_sign_in_path_for(resource)
    home_top_path
  end

  # ログアウト後に遷移するpathを設定
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
