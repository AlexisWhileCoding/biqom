class UserChallengesController < ApplicationController
  def index
    @user_challenges = UserChallenge.all
  end

  def edit
    @user_challenge = UserChallenge.find(params[:id])
  end

  def update
    @user_challenge = UserChallenge.find(params[:id])
    @user_challenge.update(user_challenge_params)
    @user_challenge.save
    redirect_to user_challenges_path
  end

  def create
    @user_challenge = UserChallenge.new(user_challenge_params)
    @user_challenge.status = "Not completed"
    @user_challenge.save
    redirect_to user_challenges_path
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:start_date_time)
  end

end
