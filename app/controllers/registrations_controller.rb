# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    # add custom create logic here
  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :user_type, :password, :password_confirmation)
  end

end