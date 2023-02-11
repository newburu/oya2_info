class Report < ApplicationRecord
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images

  def name
    title
  end
end
