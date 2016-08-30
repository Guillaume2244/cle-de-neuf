class CheckupItem < ApplicationRecord
  has_many :checkups
  has_many :descriptions

  validates :name, presence: true
  def category
  end
end

