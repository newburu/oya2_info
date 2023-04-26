class Product < ApplicationRecord
  belongs_to :brand
  has_many :items, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true
end
