class Checkup < ApplicationRecord
  belongs_to :book
  belongs_to :checkup_item, optional: true
  belongs_to :garage, optional: true
  has_many :users, through: :books

  validates :book, presence: true
  # validates :checkup_item, presence: true
end
