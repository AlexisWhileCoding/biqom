class Challenge < ApplicationRecord
  belongs_to :activity
  has_one_attached :photo
end
