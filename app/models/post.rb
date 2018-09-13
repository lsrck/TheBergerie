class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, :preview, :content, presence: true
end
