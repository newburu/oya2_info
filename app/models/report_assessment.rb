class ReportAssessment < ApplicationRecord
  belongs_to :report
  belongs_to :assessment

  acts_as_paranoid
end
