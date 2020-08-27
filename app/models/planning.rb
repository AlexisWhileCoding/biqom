class Planning < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_many :user_challenges

  after_create :create_user_challenges

  after_update :update_user_challenges

  def create_user_challenges
    activity.challenges.each do |challenge|
      user_challenges.create(challenge: challenge, start_time: start_time)
    end
  end

  def update_user_challenges
    user_challenges.each do |challenge|
      challenge.update(start_time: start_time)
    end
  end
end
