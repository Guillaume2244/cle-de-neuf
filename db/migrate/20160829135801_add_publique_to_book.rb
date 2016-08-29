class AddPubliqueToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :publique, :boolean
  end
end
