class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :registration_plate
      t.string :initial_km
      t.references :user, foreign_key: true
      t.string :initial_entry_into_service
      t.date :circulation_date

      t.timestamps
    end
  end
end
