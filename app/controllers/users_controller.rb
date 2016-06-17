class UsersController < ApplicationController
  def new
    redirect_to root_path if (current_user.nil? || current_user.name != 'jeffrey')
    @user = User.new 
    @users = User.all
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.password = params[:user][:password]

    if @user.save
      render :new
    end
  end
end
