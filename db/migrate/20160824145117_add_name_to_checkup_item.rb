class AddNameToCheckupItem < ActiveRecord::Migration[5.0]
  def change
    rename_column :checkup_items, :category, :name
  end
end


