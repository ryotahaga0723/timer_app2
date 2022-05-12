module SessionsHelper

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      current_user.present?
    end

    def user_admin?
      current_user.admin?
    end
  
    def log_in(user)
      session[:user_id] = user.id
    end
  
    def current_user?(user)
      user == current_user
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to current_user unless current_user?(@user)
    end
  end
  