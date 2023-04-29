class Brand < ApplicationRecord
  belongs_to :store
  has_many :products, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true

  def random_image
    return images.sample if images.present?
    self.products.each do |product|
      image = product.random_image
      return image if image.present?
    end
  end

end
