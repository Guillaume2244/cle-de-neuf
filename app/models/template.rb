class Template < ApplicationRecord

  has_many :books
  belongs_to :checkup_items
end
