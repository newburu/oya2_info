class Item < ApplicationRecord
  belongs_to :product
  has_many :item_photos, dependent: :destroy
  has_many :photos, through: :item_photos
end
