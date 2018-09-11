require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "#index" do
    let(:post) { create_list(:post, 5) }
    let(:user) { create(:user) }

    subject do
      get :index
    end

    it "returns all the lessons" do
      subject
      expect(response.status).to eq(200)
      expect(:posts.size).to eq(5)
    end
  end

  describe "#create" do
    let!(:title) { Faker::LeagueOfLegends.champion }
    let!(:preview) { Faker::ChuckNorris.fact }
    let!(:content) { Faker::HarryPotter.quote }
    let!(:user) { create(:user) }

    subject do
      post :create, params: {post: { title: title, preview: preview, content: content} }
    end

    it "creates a new post" do
      expect { subject }.to change(Post, :count).by(1)
      expect(Post.last.title).to eq(title)
      expect(Post.last.preview).to eq(preview)
      expect(Post.last.content).to eq(content)
      first_post = Post.first
      expect(first_post.title).to eq(title)
      expect(first_post.preview).to eq(preview)
      expect(first_post.content).to eq(content)
    end

    context "with no title" do
      let!(:title) { nil }

      it "fails creating the post" do
        expect { subject }.not_to(change(Post, :count))
      end
    end
  end

  describe "#show" do
    let(:post) { create(:post) }
    let(:id) { post.id }
    let!(:user) { create(:user) }

    subject do
      get :show, params: { id: id}
    end

    it "returns http success" do
      byebug
      subject
      expect(response).to have_http_status(:success)
    end

  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end
end
