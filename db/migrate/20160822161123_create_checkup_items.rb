class CreateCheckupItems < ActiveRecord::Migration[5.0]
  def change
    create_table :checkup_items do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
