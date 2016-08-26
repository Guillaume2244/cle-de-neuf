class AddTokenAndPlaqueToGarage < ActiveRecord::Migration[5.0]
  def change
    add_column :garages, :token, :string
    add_column :garages, :registration_plate, :string
  end
end
