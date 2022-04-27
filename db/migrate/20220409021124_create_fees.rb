class CreateFees < ActiveRecord::Migration[6.1]
  def change
    create_table :fees do |t|
      t.string :title
      t.integer :price
      t.references :aquarium, foreign_key: true

      t.timestamps
    end
  end
end
