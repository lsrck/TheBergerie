class StaticPagesController < ApplicationController
  def home
    @posts = Post.order(:created_at)
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def news; end

  def art_culture; end

  def cinema; end

  def music; end

  def about; end
end
