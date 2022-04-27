class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :japanese_name
      t.string :scientific_name
      t.string :information
      t.references :category_second, foreign_key: true
      t.references :columned_by, foreign_key: true


      t.timestamps
    end
  end
end
