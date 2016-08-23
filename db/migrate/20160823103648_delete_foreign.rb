class DeleteForeign < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :checkups, column: :garage_id
  end
end
