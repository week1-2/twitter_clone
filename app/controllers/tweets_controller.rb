class TweetsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(user_tweet_params)
    respond_to do |format|
      @tweet.user_id =  @user.id
      if @tweet.save
        format.html { redirect_to main_path(@user), notice: 'Tweeted' }
        format.json { render main_path(@user), status: :created, location: root_path }
      else
        format.html { redirect_to main_path(@user), notice: 'Tweeted' }
        format.json { render json: main_path(@user.errors), status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_tweet_params
    params.require(:tweet).permit(:text, :user_id)
  end  
end
