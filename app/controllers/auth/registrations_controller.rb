class Auth::RegistrationsController < ApplicationController
  private

  def sign_up_params
    params.permit(:name, :email, :password, :image_url, :password_confirmation)
  end
end
