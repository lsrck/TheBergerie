class PostsController < ApplicationController
  def create; end

  def index
    @posts = Post.order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = User.last
    if @post.save
      flash[:success] = "L'article a été publié!"
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
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
      params.require(:post).permit(:title, :category, :content)
  end
end
