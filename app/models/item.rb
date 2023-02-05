class Item < ApplicationRecord
  belongs_to :product
  has_many :reports
  mount_uploaders :images, ImageUploader
  serialize :images
end
