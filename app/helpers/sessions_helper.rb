module SessionsHelper

    # method log in the user. 
    def log_in(user)
        session[:user_id]  = user.id
    end

    # method to retrieve current logged in user.
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # check if current user is logged in
    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
