class UsersController < ApplicationController
  def show
    @profile_text = current_user.profile_text
    unless @profile_text.present?
      @profile_text = "プロフィールがまだ書かれていません！"
    end
  end

  def edit_profile
    @user = current_user
  end

  def update
    @user = current_user
    @user.update!(user_params)
    redirect_to users_url
  end


  private


  def user_params
    params.require(:user).permit(:name, :profile_text)
  end


end
