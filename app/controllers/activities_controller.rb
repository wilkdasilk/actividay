class ActivitiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  # def new
  #   @activity = Activity.new
  # end
  #
  # def create
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

end
