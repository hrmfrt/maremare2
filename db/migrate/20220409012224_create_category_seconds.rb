class CreateCategorySeconds < ActiveRecord::Migration[6.1]
  def change
    create_table :category_seconds do |t|
      t.string :name
      t.string :picture
      t.integer :order
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
