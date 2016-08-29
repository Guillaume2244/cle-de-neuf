class ModifyTypeDate < ActiveRecord::Migration[5.0]
  def change
    change_column :templates, :pneus_date, :string
  end
end
