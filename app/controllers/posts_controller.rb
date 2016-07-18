class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to posts_path, flash: { notice: 'Thank you for posting!' }
    else
      flash.now[:'alert-danger'] = @post.errors.full_messages
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :link_url, :body)
  end
end
