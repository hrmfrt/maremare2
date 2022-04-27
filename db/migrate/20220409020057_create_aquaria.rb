class CreateAquaria < ActiveRecord::Migration[6.1]
  def change
    create_table :aquaria do |t|
      t.string :name
      t.string :reading
      t.string :prefecture
      t.string :place
      t.string :information
      t.string :homepage
      t.integer :order

      t.timestamps
    end
  end
end
