class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(:created_at)
  end

  def news
    @posts = Post.order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
  end

  def art_culture
    @posts = Post.order(:created_at)
  end

  def cinema; end

  def music; end

  def about; end
end
