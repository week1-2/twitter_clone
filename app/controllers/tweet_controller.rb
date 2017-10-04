class TweetController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
  end

  def destroy
  end
end
