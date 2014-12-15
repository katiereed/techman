class ProfileController < ApplicationController
  def index
  	@current_user = User.find(session[:user_id])
    @users = User.order('wins DESC, :username, :avatar').first(5)
  	if @current_user.games === nil
  		@score = 0
  	else
  	@score = @current_user.wins * 10
  	end
	end
end
