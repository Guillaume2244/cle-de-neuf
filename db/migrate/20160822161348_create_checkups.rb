class CreateCheckups < ActiveRecord::Migration[5.0]
  def change
    create_table :checkups do |t|
      t.references :books, foreign_key: true
      t.date :effective_date
      t.references :checkup_item, foreign_key: true
      t.references :garage, foreign_key: true
      t.string :km_ondate
      t.date :estimated_date
      t.boolean :done

      t.timestamps
    end
  end
end
