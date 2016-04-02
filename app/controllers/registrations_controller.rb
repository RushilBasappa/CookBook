class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:chef).permit(:chefname, :email, :password, :password_confirmation)
  end
end

