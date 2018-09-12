class Category < ApplicationRecord
  has_many :posts
  validates :name, presence: true, inclusion: {
    in: %w(Actualité Art/Culture Cinéma Musique),
    message: "%{value} n'est pas une catégorie existente"
  }
end
