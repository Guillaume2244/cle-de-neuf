class DeleteColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :garagiste, :boolean
  end
end
