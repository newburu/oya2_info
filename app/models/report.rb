class Report < ApplicationRecord
  belongs_to :item
  mount_uploaders :images, ImageUploader
  serialize :images
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  def name
    title
  end
end
