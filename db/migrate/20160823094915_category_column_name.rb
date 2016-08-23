class CategoryColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :checkup_items, :type, :category
  end
end
