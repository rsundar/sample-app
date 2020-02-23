module SessionsHelper

    # method log in the user. 
    def log_in(user)
        session[:user_id]  = user.id
    end

    # method to retrieve current logged in user.
    def current_user(user)
        @current_user ||= User.find_by(id: session[:user_id])
    end

    # check if current user is logged in
    def logged_in?
        !current_user.nil?
    end
end
