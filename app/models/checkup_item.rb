class CheckupItem < ApplicationRecord
  has_many :checkups

  validates :name, presence: true
  validates :description, presence: true

  default_scope { order(:numero) }
end

