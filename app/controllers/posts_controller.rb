class PostsController < ApplicationController
  
  def index
    @posts = current_user.posts
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @delete_post_path = post_path(@post)
  end
  

  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path 
  
  end

  private

    def post_params
      params.require(:post).permit(:titre, :image)
  end
  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end

 
end
