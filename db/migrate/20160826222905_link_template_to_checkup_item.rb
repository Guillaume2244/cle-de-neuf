class LinkTemplateToCheckupItem < ActiveRecord::Migration[5.0]
  def change
    add_column :templates, :checkup_item_id, :integer
    add_foreign_key :templates, :checkup_items
  end
end
