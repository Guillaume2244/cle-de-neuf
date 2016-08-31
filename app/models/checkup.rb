class Checkup < ApplicationRecord
  mount_uploader :facture, PhotoUploader
  belongs_to :book
  belongs_to :checkup_item, optional: true
  belongs_to :garage, optional: true
  has_many :users, through: :books

  validates :book, presence: true
  # validates :checkup_item, presence: true
  #
  scope :not_done, -> { where(done: false) }

  def has_checkup_with_name(name)
    checkup_item.name == name
  end
end
