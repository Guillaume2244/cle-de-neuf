class AddAverageToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :average_km, :string
  end
end
