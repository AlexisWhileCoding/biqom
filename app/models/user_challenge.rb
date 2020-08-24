class UserChallenge < ApplicationRecord
  belongs_to :planning
  belongs_to :challenge
end
