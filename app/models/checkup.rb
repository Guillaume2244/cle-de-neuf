class Checkup < ApplicationRecord
  belongs_to :books
  belongs_to :checkup_item
  belongs_to :garage

  validates :book, presence: true
  validates :checkup_item, presence: true
end
