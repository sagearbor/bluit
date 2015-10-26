class PostsController < ApplicationController
  def index
    @message = 'I <3 Ruby'
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new params.require(:post).permit(:title, :link)
    post.save
    # REDIRECT back to route after create
    # redirect_to '/'
    #redirect_to new_post_path
    redirect_to posts_path
  end

end
