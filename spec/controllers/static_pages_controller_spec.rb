require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #news" do
    it "returns http success" do
      get :news
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #art_culture" do
    it "returns http success" do
      get :art_culture
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #cinema" do
    it "returns http success" do
      get :cinema
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #music" do
    it "returns http success" do
      get :music
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
