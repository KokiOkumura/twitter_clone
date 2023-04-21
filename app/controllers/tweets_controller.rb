class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    # @tweet = Tweet.new(tweet_params)
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_url, notice: "投稿完了"
    else
      # render :new
      redirect_to new_tweet_path
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text, :user_id)
  end
end
