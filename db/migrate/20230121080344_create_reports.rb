class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.references :item, null: false, foreign_key: true
      t.string :title
      t.text :detail
      t.date :bought_at

      t.timestamps
    end
  end
end
