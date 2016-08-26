class CheckupItem < ApplicationRecord
  has_many :checkups

  validates :name, presence: true
  validates :description, presence: true
  def category
  end
end

