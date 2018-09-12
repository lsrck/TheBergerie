require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "the user logs"
    before :each do
    sign_in create(:user)
  end

  describe "#create" do
    let(:title) { Faker::BreakingBad.episode }
    let(:preview) { Faker::ChuckNorris.fact }
    let(:content) { Faker::HarryPotter.quote }
    let!(:user) { create(:user) }
    let!(:category) { create(:category) }

    subject do
      post :create, params: { post: { title: title, preview: preview, content: content } }
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

    it "redirects to the right post" do
      subject
      expect(response).to redirect_to(post_path(Post.last.id))
    end

    context "with no title" do
      let!(:title) { nil }

      it "fails creating the post" do
        expect { subject }.not_to(change(Post, :count))
      end
    end
  end

  describe "#index" do
    let(:post) { create_list(:post, 5) }

    subject do
      get :index
    end

    it "returns all the lessons" do
      subject
      expect(response.status).to eq(200)
      expect(:posts.size).to eq(5)
    end
  end

  describe "#show" do
    let(:post) { create(:post) }
    let(:id) { post.id }

    subject do
      get :show, params: { id: id }
    end

    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe "#update" do
    let(:post) { create(:post) }
    let(:id) { post.id }
    let(:title) { Faker::LeagueOfLegends.champion }

    subject do
      patch :update, params: { id: id, post: { title: title } }
    end

    it "changes the title" do
      expect { subject }.to change { post.reload.title }
    end
  end

  describe "#destroy" do
    let!(:post) { create(:post) }
    let(:id) { post.id }

    subject do
      delete :destroy, params: { id: id }
    end

    it "destroys the lesson" do
      expect { subject }.to change(Post, :count).from(1).to(0)
    end
  end
end
