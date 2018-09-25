class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :header_pic, HeaderPicUploader
  validates :title, :preview, :content, presence: true
  validate  :thumbnail_size
  validate  :header_pic_size

  def thumbnail_size
    if thumbnail.size > 1.megabyte
        errors.add(:thumbnail, "Doit être inferieur à 1MB")
    end
  end
   def header_pic_size
    if thumbnail.size > 5.megabyte
        errors.add(:thumbnail, "Doit être inferieur à 5MB")
    end
  end
end
