class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :category, :days, :photo)
  end
end
