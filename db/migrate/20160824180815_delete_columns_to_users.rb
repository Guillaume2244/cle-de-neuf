class DeleteColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :mecanicien, :boolean
    remove_column :users, :garage, :boolean
  end
end
