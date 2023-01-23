class Item < ApplicationRecord
  belongs_to :product
  mount_uploaders :images, ImageUploader
  serialize :images
end
