class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.order(:created_at).reverse
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category_options = [['Actualité', 1], ['Art/Culture', 2], ['Musique', 3], ['Cinéma', 4]]
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      # flash[:success] = "L'article a été publié!"
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @category_options = [['Actualité', 1], ['Art/Culture', 2], ['Musique', 3], ['Cinéma', 4]]
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "L'article a été édité!"
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "L'articlé a été supprimé!"
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit( :title, :preview, :content, :category_id, :thumbnail)
  end
end
