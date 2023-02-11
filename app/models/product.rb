class Product < ApplicationRecord
  belongs_to :brand
  has_many :items
  mount_uploaders :images, ImageUploader
  serialize :images
end
