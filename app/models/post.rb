class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploader :thumbnail, ThumbnailUploader
  validates :title, :preview, :content, presence: true
  validate  :thumbnail_size

  def thumbnail_size
    if thumbnail.size > 1.megabyte
        errors.add(:thumbnail, "Doit être inferieur à 1MB")
    end
  end
end
