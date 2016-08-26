class CheckupItem < ApplicationRecord
  has_many :checkups
  has_many :templates

  validates :name, presence: true
  validates :description, presence: true
  def category
  end
end

