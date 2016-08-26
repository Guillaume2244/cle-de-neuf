class AddPhotoToCheckup < ActiveRecord::Migration[5.0]
  def change
    add_column :checkups, :photo, :string
  end
end
