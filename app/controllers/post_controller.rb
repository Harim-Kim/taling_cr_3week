class PostController < ApplicationController
  def index
    # @posts 
    @all_post = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:new_title_input], content: params[:new_content_input])
    # pos = Post.new
    # pos.title = params[:new_title_input]
    # pos.content = params[:new_content_input]
    # pos.save
    redirect_to "/post/index"
  end
  
  def read
    @one_post = Post.find(params[:id_post])
    @one_post.view = @one_post.view + 1
    @one_post.save
  end
end
