class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def search
    @results = Tweet.search(params[:query]) 
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to main_url(@user), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: main_url(@user) }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :user_name, :bio, :location, :email, :password)
    end
end
