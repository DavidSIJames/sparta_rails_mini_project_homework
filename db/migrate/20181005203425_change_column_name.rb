class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :tech_id, :technology_id
  end
end
