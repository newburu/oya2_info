class Brand < ApplicationRecord
  belongs_to :store
  has_many :products
  mount_uploaders :images, ImageUploader
  serialize :images
end
