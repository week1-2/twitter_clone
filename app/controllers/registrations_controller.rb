class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :user_name, :email, :bio, :location, :password, :password_confirmation, :avatar, :avatar_cache)
  end

  def account_update_params
    params.require(:user).permit(:name, :user_name, :email, :bio, :location, :avatar, :avatar_cache)
  end

  ## To update without password
  protected
    def update_resource(resource, params)
      resource.update_without_password(params)
    end
    
    def after_update_path_for(resource)
      main_path(resource) || root_path 
    end
end
