require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_inclusion_of(:name).in_array(%w(Actualité Art/Culture Cinéma Musique)) }
end
