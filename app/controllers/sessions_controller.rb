class SessionsController < ApplicationController
  def new
  end

  def create
    # render 'new'
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect the user to the user's show page
      log_in user
      redirect_to user
    else
      # Create an error message
      flash.now[:danger] = "Invalid username/password combination!"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
