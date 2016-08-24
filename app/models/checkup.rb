class Checkup < ApplicationRecord
  belongs_to :book
  belongs_to :checkup_item
  belongs_to :garage
  has_many :users, through: :books

  validates :book, presence: true
  # validates :checkup_item, presence: true
end
