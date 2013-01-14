class UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page]).per_page(10)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "You Successfully Added the User"
    else
      render "new"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
end