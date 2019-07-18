class UsersController < ApplicationController
  include SessionsHelper
  def user_index
    @users = User.all
  end

  def new_user
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Mood!"
      redirect_to @user
    else
      render :new_user
    end
  end

  def destroy

  end


  def show
    @user = User.find(params[:id])
    @messages = @user.messages
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
