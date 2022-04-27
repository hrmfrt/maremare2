class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      #t.string :picture
      t.string :caption
      t.integer :photo_num
      t.references :creature, foreign_key: true
      t.references :photo_by, foreign_key: true
      t.references :aquarium, foreign_key: true
      t.references :photo_set, foreign_key: true

      t.timestamps
    end
  end
end
