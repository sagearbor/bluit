class PostsController < ApplicationController
  def index
    @message = 'I <3 Ruby'
    @posts = Post.all

  end
end
