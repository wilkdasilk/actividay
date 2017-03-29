class ActivitiesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_activities, only: [:show]

  def index
    @activities = Activity.all
  end

  def show
  end

  private

  #If the activity exists, it sets it as the instance variable, otherwise it redirects to all activities.
  def set_activities
    if Activity.friendly.exists?(params[:id])
      @activity = Activity.friendly.find(params[:id])
    else
      redirect_to activities_path
    end
  end

end
