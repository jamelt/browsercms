class UserParameterSanitizer < Devise::ParameterSanitizer

  def sign_up
    super.permit(:email)
  end

end
