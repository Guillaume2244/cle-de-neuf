class Garage < ApplicationRecord
  belongs_to :user
  has_many :checkups

  validates :name, presence: true
  validates :siret, presence: true
  validates :user, presence: true
end
