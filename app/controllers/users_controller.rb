class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user.save
    redirect_to `/users/#{@user.id}`
  end

end
