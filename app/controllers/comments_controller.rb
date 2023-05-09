class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end


  def create
    @comment = current_user.comments.new(comments_params)
    if @comment.save
      redirect_to tweet_path(params[:tweet_id]), notice: "投稿完了"
    else
      redirect_to new_tweet_comment_path(text: @comment.text) , notice: "コメントに失敗しました。"
    end
  end


  private

  def comments_params
    params.require(:comment).permit(:text).merge(tweet_id: params[:tweet_id])
  end

  def posted_tweet
    # @tweet = current_user.find(params[:tweet_id])
  end

end
