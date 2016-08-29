class DeleteForeignKeyCheckupItem < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :templates, column: :checkup_item_id
  end
end
