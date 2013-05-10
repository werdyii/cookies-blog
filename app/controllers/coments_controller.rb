class ComentsController < ApplicationController
  
  def new
  	@post = Post.find params[:post_id]
    if cookies[:remember_me]
  	  @coment = @post.coments.new(:author => cookies[:author],:email => cookies[:email])
    else
      @coment = @post.coments.new
    end
  end

  def create
  	@post = Post.find params[:post_id]
  	@coment = @post.coments.build params[:coment]

  	if @coment.save
      cookies_save_if_checked
      redirect_to @post
    else
			render :new
  	end
  end

  private
  def cookies_save_if_checked
    if params[:remember_me]
      cookies[:author] = @coment.author
      cookies[:email] = @coment.email
    else
      cookies.delete :author
      cookies.delete :email
    end
  end

end
