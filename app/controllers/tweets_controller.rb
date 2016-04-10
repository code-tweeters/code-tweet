class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order(:created_at)
  end

  def new
    @tweet = Tweet.new
  end

  def create 
    if current_user
      @tweet = Tweet.create(tweet_params)
      @tweet.user_id = current_user.id
      @tweet.save
    else
      flash[:not_logged_in] = "Not logged in"
    end
    redirect_to :root
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
  
end
