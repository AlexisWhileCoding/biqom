class Activity < ApplicationRecord
  has_many :challenges, dependent: :destroy
  has_many :plannings, dependent: :destroy
  has_one_attached :photo
end
