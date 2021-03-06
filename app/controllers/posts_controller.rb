class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to "/"

  end

  def show
    @post = Post.find(params[:id])
  end

private
def post_params
params.permit(:genre, :title, :text)
  end


end
