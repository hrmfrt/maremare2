class CreatePhotoSets < ActiveRecord::Migration[6.1]
  def change
    create_table :photo_sets do |t|
      t.string :name

      t.timestamps
    end
  end
end
