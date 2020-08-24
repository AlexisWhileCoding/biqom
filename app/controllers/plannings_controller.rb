class PlanningsController < ApplicationController
  def my_activities
    @activities = Activity.all
  end

  def create
    @planning = Planning.new(planning_params)
    @planning.save
    redirect_to my_activities_path
  end

  private

  def planning_params
    params.require(:plannings).permit(:start_time)
  end
end
