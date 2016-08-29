class AddNameToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :name, :string
  end
end
