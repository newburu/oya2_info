class Product < ApplicationRecord
  belongs_to :brand
  has_many :product_photos, dependent: :destroy
  has_many :photos, through: :product_photos
end
