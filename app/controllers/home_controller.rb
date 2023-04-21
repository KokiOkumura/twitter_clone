class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def top
    @tweets = Tweet.eager_load(:user).merge(User.where(is_valid: true)).order(created_at: :desc)

  end
end
