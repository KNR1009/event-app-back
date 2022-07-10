class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

  def sign_up_params
    puts "========="
    puts "aaaaa"
    puts "========="
    params.permit(:name, :email, :password, :image_url, :password_confirmation)
  end
end


