class Post < ApplicationRecord
  belongs_to :user

  validates :title, :preview, :content, presence: true
end
