module SessionsHelper

  def sign_in(user)
    sessions[:user_id] = user.id
  end
  def sign_out
    sessions.delete(:user_id)
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !currente_user.nil?
  end

end
