class AddFuturToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :futur_km, :string
    add_column :books, :futur_date, :date
  end
end
