class AddUserRefToReports < ActiveRecord::Migration[7.0]
  def change
    add_reference :reports, :owner, foreign_key: { to_table: :users }, after: :item_id
  end
end
