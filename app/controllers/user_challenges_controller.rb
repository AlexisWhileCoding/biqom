class UserChallengesController < ApplicationController
  def index
    @user_challenges = []

    current_user.plannings.each do |planning|
      next unless planning.start_date >= Date.today && Date.today < (planning.start_date + planning.activity.days)
      position = (Date.today - planning.start_date).days.to_i
      challenge =  planning.activity.challenges.find_by(position: position)
      @user_challenges << current_user.user_challenges.find_by(challenge: challenge)
    end
    @user_challenges.compact!
  end

  def dashboard
    @user_challenges = UserChallenge.all
    @plannings = Planning.all
    #binding.pry
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

  def validate
    @user_challenge = UserChallenge.find(params[:id])
    @user_challenge.update!(status: params[:commit])
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
    params.require(:user_challenge).permit(:start_time, :status)
  end

end
