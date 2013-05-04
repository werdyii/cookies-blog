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

  	# FIXME toto nefunguje vypiše to rake notes
  	if @coment.save

      if params[:remember_me]
        cookies[:remember_me] = 1
        cookies[:author] = @coment.author
        cookies[:email] = @coment.email
      else
        cookies.delete :remember_me
        cookies.delete :author
        cookies.delete :email
      end
  		
      redirect_to @post
		
    else
			render :new

		end

  end

end
