class CreateItemPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :item_photos do |t|
      t.references :item, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
