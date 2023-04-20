class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def top
    @user = current_user
    @tweets = Tweet.all
  end
end
