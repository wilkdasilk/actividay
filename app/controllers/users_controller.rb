class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:profile]

  def index
    @users = User.all
  end

  def profile
    if current_user
      @user = current_user
    else
      redirect_to splash_path
    end
  end

  def show
    if User.exists?(params[:id])
      @user = User.find_by_id(params[:id])
    else
      redirect_to root_path
    end
  end

end
