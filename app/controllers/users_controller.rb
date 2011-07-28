class UsersController < ApplicationController
  def new
	@user = User.new
  end

  def create
	@user = User.new(params[:user])
	if @user.save
		redirect_to root_url, :notice => "Confirmation email sent!"
	else
		render :new
	end
  end

  def destroy
  end

end
