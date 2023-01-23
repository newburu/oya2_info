class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.date :release_at
      t.string :images

      t.timestamps
    end
  end
end
