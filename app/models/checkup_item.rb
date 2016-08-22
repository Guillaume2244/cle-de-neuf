class CheckupItem < ApplicationRecord
  has_many :checkups

  validates :type, presence: true
  validates :description, presence: true
end
