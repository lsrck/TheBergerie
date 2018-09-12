class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  accepts_nested_attributes_for :category
  validates :title, :preview, :content, presence: true
end
