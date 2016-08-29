class Add < ActiveRecord::Migration[5.0]
  def change
    add_column :checkup_items, :numero, :integer
  end
end
