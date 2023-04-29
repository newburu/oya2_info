class Item < ApplicationRecord
  belongs_to :product
  has_many :reports, dependent: :destroy
  mount_uploaders :images, ImageUploader
  serialize :images

  acts_as_paranoid

  validates :name, presence: true

  # NEW表示しておく日数
  NEW_INTERVAL_DAY = 7.days

  # 新着商品か？
  def new?
    (created_at + NEW_INTERVAL_DAY) > DateTime.now
  end

  def random_image
    images.sample if images.present?

    nil
  end

end
