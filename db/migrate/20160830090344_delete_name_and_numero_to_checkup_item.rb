class DeleteNameAndNumeroToCheckupItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :checkup_items, :numero, :boolean
    remove_column :checkup_items, :description, :string
  end
end
