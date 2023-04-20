class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def create
    # @tweet = Tweet.new(tweet_params)
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_url, notice: "投稿完了"
    else
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text, :user_id)
  end
end
