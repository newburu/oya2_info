class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.references :store, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
