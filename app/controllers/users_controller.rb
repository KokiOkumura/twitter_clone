class UsersController < ApplicationController
  def show
    @profile = Profile.find(current_user.id)
  end

  def edit_profile
    @profile = Profile.find(current_user.id)
    @user = current_user
  end

  def update

  end


end
