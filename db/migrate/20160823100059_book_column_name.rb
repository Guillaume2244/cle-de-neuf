class BookColumnName < ActiveRecord::Migration[5.0]
  def change
    remove_reference :checkups, :books
    add_reference :checkups, :book
  end
end
