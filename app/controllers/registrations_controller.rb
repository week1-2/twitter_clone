class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :user_name, :email, :bio, :location, :password, :password_confirmation, :avatar, :avatar_cache)
  end

  def account_update_params
    params.require(:user).permit(:name, :user_name, :email, :bio, :location, :password, :password_confirmation, :current_password, :avatar, :avatar_cache)
  end
end
