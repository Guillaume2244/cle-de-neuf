class Book < ApplicationRecord
  belongs_to :template
  belongs_to :user
  has_many :checkups
  has_many :garages, through: :checkups


  validates :user, presence: true
  validates :registration_plate, presence: true

  def is_garagiste(user)
    self.checkups.each do |checkup|
      if checkup.garage == user.garages.first
        return true
      end
    end
    false
  end

  # checkup not done
  # checkup.checkup_item with name uniq order by number
  # PEUT S ECRIRE EN 100 FOIS MOINS COMPLIQUÉ
  def checkups_first_to_do
    checkups_to_do = {}
    checkups.each do |checkup|
      if checkup.checkup_item
        checkup_with_same_name = checkups_to_do[checkup.checkup_item.name]
        if checkup_with_same_name
          if checkup_with_same_name.checkup_item.numero > checkup.checkup_item.numero
            checkups_to_do[checkup.checkup_item.name] = checkup if !checkup.done
          end
        else
          checkups_to_do[checkup.checkup_item.name] = checkup if !checkup.done
        end
      end
    end
    checkups_to_do.values
  end



end
