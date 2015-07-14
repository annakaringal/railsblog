class PostsController < ApplicationController
  def all
    @posts = Post.all
  end
  def index
    @posts = Post.where(user_id: params[:user_id])
  end

  def new
    @post = Post.new
    @user = User.find_by_id(params[:user])
  end

  def create
    post = Post.new(post_params)
    post.user_id = params[:user_id]
    post.save!
    redirect_to root_path
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    post = Post.find_by_id(params[:id])
    post.update(post_params)
    post.save!
    redirect_to post_path(post)
  end

  def destroy
    post = Post.find_by_id(params[:id])
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
