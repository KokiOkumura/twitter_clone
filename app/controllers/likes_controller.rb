class LikesController < ApplicationController
  # ajax通信
  def create
    @likes = current_user.likes.create(content_type: params[:content_type], content_id: params[:content_id])
  end

  def destroy
  end

end
