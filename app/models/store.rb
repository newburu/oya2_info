class Store < ApplicationRecord
  has_many :brands, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true
end
