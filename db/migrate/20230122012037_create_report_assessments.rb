class CreateReportAssessments < ActiveRecord::Migration[7.0]
  def change
    create_table :report_assessments do |t|
      t.references :report, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
