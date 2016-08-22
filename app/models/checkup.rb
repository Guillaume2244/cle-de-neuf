class Checkup < ApplicationRecord
  belongs_to :books
  belongs_to :checkup_item
  belongs_to :garage
end
