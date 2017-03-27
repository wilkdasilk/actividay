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
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end
