class AddEstimatedDateToCheckups < ActiveRecord::Migration[5.0]
  def change
    add_column :checkups, :estimated_date_string, :string
  end
end
