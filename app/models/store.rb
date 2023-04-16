class Store < ApplicationRecord
  has_many :brands
  mount_uploaders :images, ImageUploader
  serialize :images

  validates :name, presence: true
end
