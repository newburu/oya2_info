class Product < ApplicationRecord
  belongs_to :brand
  has_many :items, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  belongs_to :owner, class_name: 'User', foreign_key: :created_by_id

  acts_as_paranoid
  
  include UserstampsConcern

  validates :name, presence: true

  def random_image
    return images.sample if images.present?
    self.items.each do |item|
      image = item.random_image
      return image if image.present?
    end

    nil
  end

end
