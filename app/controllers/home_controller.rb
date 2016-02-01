class HomeController < ApplicationController

  def show
  	if logged_in?
  		redirect_to link_index_path
  	end
 end

 	  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

end
