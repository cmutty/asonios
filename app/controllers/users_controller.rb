class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
  	 @user = User.new
  end
 def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to asonios!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
 def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end
end
