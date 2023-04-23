class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end


  def create
    @comment = current_user.comments.new(text: params[:comment][:text], tweet_id: params[:tweet_id])
    if @comment.save
      redirect_to tweet_path(params[:tweet_id]), notice: "投稿完了"
    else
      redirect_to root_path, notice: "失敗"
    end
  end


  private

  def comments_params
    params.require(:comment).permit(:user_id, :text)
  end

  def posted_tweet
    # @tweet = current_user.find(params[:tweet_id])
  end

end
