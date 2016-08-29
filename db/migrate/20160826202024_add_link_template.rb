class AddLinkTemplate < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :template_id, :integer
    add_foreign_key :books, :templates
  end
end
