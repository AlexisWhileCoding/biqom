class PlanningsController < ApplicationController
  def my_activities
    @plannings = current_user.plannings
  end

  def create
    @planning = Planning.new
    @planning.user = current_user
    @planning.activity_id = params[:activity_id]
    @planning.status = "Not started yet"
    @planning.save!
    redirect_to my_activities_path
  end

  def update
    @planning = Planning.find(params[:id])
    @planning.status = "Planned"
    @planning.update(planning_params)
    redirect_to my_activities_path
  end

  private

  def planning_params
    params.require(:planning).permit(:start_time, :start_date)
  end
end
