class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :pneus_km
      t.date :pneus_date
      t.date :freinage
      t.string :revision_km
      t.date :revision_date
      t.date :balai
      t.date :echappement
      t.string :amortisseurs_km
      t.date :amortisseurs_date
      t.string :amortisseurs_changement
      t.string :bougies_km
      t.date :climatisation
      t.date :controle_technique_first
      t.date :controle_technique_others
      t.string :vidange_km
      t.date :vidange_date

      t.timestamps
    end
  end
end
