class Report < ApplicationRecord
  has_many :report_assessments, dependent: :destroy
  has_many :assessments, through: :report_assessments
  accepts_nested_attributes_for :report_assessments

  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  acts_as_paranoid

  validates :title, presence: true

  # child_listで利用するためにAlias
  def name
    title
  end

  # TITLEタグ用のAlias
  def title_tag
    "#{self.item.name}:#{self.title}"
  end

  # NEW表示しておく日数
  NEW_INTERVAL_DAY = 7.days

  # 新着情報か？
  def new?
    (created_at + NEW_INTERVAL_DAY) > DateTime.now
  end

  def random_image
    return images.sample if images.present?

    nil
  end

end
