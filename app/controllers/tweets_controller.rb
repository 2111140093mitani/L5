class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end
  
  def create
    tweet = Tweet.new(message: params[:tweet][:messege])
    tweet.save
    redirect_to root_path
  end
  
  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to root_path
  end
end
