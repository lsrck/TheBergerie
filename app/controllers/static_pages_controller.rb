class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(:created_at).reverse
  end

  def news
    @posts = Post.order(:created_at).reverse
  end

  def show
    @post = Post.find(params[:id])
  end

  def art_culture
    @posts = Post.order(:created_at).reverse
  end

  def cinema
    @posts = Post.order(:created_at).reverse
  end

  def music 
    @posts = Post.order(:created_at).reverse
  end

  def about; end
end
