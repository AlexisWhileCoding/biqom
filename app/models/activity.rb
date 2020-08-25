class Activity < ApplicationRecord
  has_many :challenges
  has_one_attached :photo
end
