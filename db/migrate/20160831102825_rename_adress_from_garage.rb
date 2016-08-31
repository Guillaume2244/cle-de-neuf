class RenameAdressFromGarage < ActiveRecord::Migration[5.0]
  def change
    rename_column :garages, :address, :street
  end
end
