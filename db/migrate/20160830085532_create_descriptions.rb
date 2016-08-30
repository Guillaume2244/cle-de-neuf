class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.integer :numero
      t.references :checkup_item, foreign_key: true

      t.timestamps
    end
  end
end
