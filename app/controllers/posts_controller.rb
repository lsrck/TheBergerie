class PostsController < ApplicationController
  def create; end

  def index
    @posts = Post.order(:created_at)
  end

  def show; end

  def update; end

  def destroy; end
end
