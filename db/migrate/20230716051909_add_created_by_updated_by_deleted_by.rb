class AddCreatedByUpdatedByDeletedBy < ActiveRecord::Migration[7.0]
  def change
    add_reference :stores, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :stores, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :stores, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at

    add_reference :brands, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :brands, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :brands, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at

    add_reference :products, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :products, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :products, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at
    
    add_reference :items, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :items, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :items, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at
    
    add_reference :reports, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :reports, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :reports, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at

    add_reference :assessments, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :assessments, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :assessments, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at

    add_reference :report_assessments, :created_by, foreign_key: { to_table: :users }, after: :created_at
    add_reference :report_assessments, :updated_by, foreign_key: { to_table: :users }, after: :updated_at
    add_reference :report_assessments, :deleted_by, foreign_key: { to_table: :users }, after: :deleted_at
  end
end
