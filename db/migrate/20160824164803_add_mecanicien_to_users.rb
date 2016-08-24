class AddMecanicienToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :garagiste, :boolean
  end
end
