class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :message
      t.datetime :deleted_at, default: nil

      t.timestamps
    end
  end
end
