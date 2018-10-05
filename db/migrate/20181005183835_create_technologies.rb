class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :technology
      t.date :date_created
      t.integer :version
      t.text :description
      t.string :logo
      t.integer :user_id

      t.timestamps
    end
  end
end
