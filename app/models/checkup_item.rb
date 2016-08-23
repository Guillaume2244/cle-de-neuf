class CheckupItem < ApplicationRecord
  has_many :checkups

  validates :category, presence: true
  validates :description, presence: true
end
