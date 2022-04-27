class CreateColumnedBies < ActiveRecord::Migration[6.1]
  def change
    create_table :columned_bies do |t|
      t.string :name

      t.timestamps
    end
  end
end
