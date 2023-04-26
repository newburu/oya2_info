class Brand < ApplicationRecord
  belongs_to :store
  has_many :products, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true
end
