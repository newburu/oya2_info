class AddDeletetAt < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :deleted_at, :datetime, default: nil
    add_column :brands, :deleted_at, :datetime, default: nil
    add_column :products, :deleted_at, :datetime, default: nil
    add_column :items, :deleted_at, :datetime, default: nil
    add_column :reports, :deleted_at, :datetime, default: nil
    add_column :assessments, :deleted_at, :datetime, default: nil
    add_column :report_assessments, :deleted_at, :datetime, default: nil
  end
end
