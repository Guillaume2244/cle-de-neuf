class Checkup < ApplicationRecord
  belongs_to :book
  belongs_to :checkup_item
  has_many :users, through: :books

  validates :book, presence: true
  validates :checkup_item, presence: true
end
