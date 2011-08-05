class UsersController < ApplicationController
	load_and_authorize_resource
  def new
	@user = User.new
  end

  def create
	@user = User.new(params[:user])
	if @user.save
		UserMailer.activate_user(@user)
		redirect_to root_url, :notice => "Confirmation email sent!"
	else
		render :new
	end
  end

  def destroy
	@user.destroy
  end

  def index
	@users = User.find(:all)
  end

end
