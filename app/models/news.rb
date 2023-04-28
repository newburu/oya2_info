class News < ApplicationRecord
  acts_as_paranoid

  validates :title, presence: true
  validates :message, presence: true

  # NEW表示しておく日数
  NEW_INTERVAL_DAY = 7.days

  # 新着商品か？
  def new?
    (created_at + NEW_INTERVAL_DAY) > DateTime.now
  end
end
