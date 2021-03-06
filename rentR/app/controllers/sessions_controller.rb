class SessionsController < ApplicationController
	
	skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create
  	@user = login(params[:email], params[:password])
  	if @user
  		redirect_to(rentals_path, notice: "Logged in successfully")
  	else
  		flash.now[:alert] = "Login failed"
  		render :new
  	end
  end

  def destroy
  	logout
  	redirect_to users_path
  end
end
