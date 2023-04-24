class UsersController < ApplicationController

  before_action :set_user, only: [:update, :user_show]
  


  def edit_profile
  end

  def update
    @user.update(user_params)
    redirect_to user_show_user_path
  end

  def withdraw
    current_user.update(is_valid: false)
    reset_session
    redirect_to root_path
  end

  def user_show
    @profile_text = @user.profile_text
      unless @profile_text.present?
        @profile_text = "プロフィールがまだ書かれていません！"
      end
  end


  private


  def user_params
    params.require(:user).permit(:name, :profile_text, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
