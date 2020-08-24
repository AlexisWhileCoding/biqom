class User < ApplicationRecord
  has_many :plannings
  has_many :activities, through: :plannings
  has_many :user_challenges, through: :plannings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
