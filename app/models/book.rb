class Book < ApplicationRecord
  belongs_to :user
  has_many :checkups

  validates :user, presence: true
  validates :registration_plate, presence: true
end
