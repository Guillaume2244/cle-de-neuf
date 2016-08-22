class Garage < ApplicationRecord
  belongs_to :user
  has_many :checkups
  has_many :books, through: :checkups

  validates :name, presence: true
  validates :siret, presence: true
  validates :user, presence: true
end
