class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find params[:id]
  	@coments = @post.coments.arrange
  end
end
