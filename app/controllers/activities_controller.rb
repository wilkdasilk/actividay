class ActivitiesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_activities, only: [:show]

  def index
    @activities = Activity.all
  end

  def show
  end

  private

  def set_activities
    if Activity.exists?(params[:id])
      @activity = Activity.find(params[:id])
    else
      redirect_to activities_path
    end
  end

end
