class Report < ApplicationRecord
  has_many :report_assessments
  has_many :assessments, through: :report_assessments
  accepts_nested_attributes_for :report_assessments

  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  def name
    title
  end
end
