class UsersController < ApplicationController


  before_action :authenticate_user!, except: [:profile]

  #GET users
  def index
    @users = User.all
  end

  #GET profile
  def profile
    if current_user
      @user = current_user
    else
      redirect_to splash_path
    end
  end

  #GET user is user exists, otherwise redirects home.
  def show
    if User.friendly.exists?(params[:id])
      @user = User.friendly.find(params[:id])
    else
      redirect_to root_path
    end
  end

end
