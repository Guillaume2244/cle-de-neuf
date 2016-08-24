class Book < ApplicationRecord
  belongs_to :user
  has_many :checkups
  has_many :garages, through: :checkups

  validates :user, presence: true
  validates :registration_plate, presence: true


  def is_garagiste(user)
    self.checkups.each do |checkup|
      if checkup.garage.user == user
        return true
      end
    end
    false
  end
end
