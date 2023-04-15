class UsersController < ApplicationController
  def show
    @profile = Profile.find(current_user.id)
    @user = current_user
  end

  def edit_profile
    @profile = Profile.find(current_user.id)
    @user = current_user
  end

  def update
    profile = Profile.find(current_user.id)
    profile.update!(:profile_text)
    current_user.name.update!(:name)
    redirect_to users_path
  end

end
