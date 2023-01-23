class Report < ApplicationRecord
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images
end
