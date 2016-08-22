class CreateGarages < ActiveRecord::Migration[5.0]
  def change
    create_table :garages do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :siret
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :phone_number
      t.string :photo

      t.timestamps
    end
  end
end
