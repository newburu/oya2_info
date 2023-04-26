class Item < ApplicationRecord
  belongs_to :product
  has_many :reports, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true
end
