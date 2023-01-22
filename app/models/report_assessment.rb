class ReportAssessment < ApplicationRecord
  belongs_to :report
  belongs_to :assessment
end
