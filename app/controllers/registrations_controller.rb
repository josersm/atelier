class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/dashboard'
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_type)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :user_type)
  end
end
