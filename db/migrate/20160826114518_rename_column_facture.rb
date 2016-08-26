class RenameColumnFacture < ActiveRecord::Migration[5.0]
  def change
    rename_column :checkups, :photo, :facture
  end
end
