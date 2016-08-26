class ModifyTypeDateForOthers < ActiveRecord::Migration[5.0]
  def change
    change_column :templates, :freinage, :string
    change_column :templates, :revision_date, :string
    change_column :templates, :balai, :string
    change_column :templates, :echappement, :string
    change_column :templates, :amortisseurs_date, :string
    change_column :templates, :climatisation, :string
    change_column :templates, :controle_technique_first, :string
    change_column :templates, :controle_technique_others, :string
    change_column :templates, :vidange_date, :string
  end
end
