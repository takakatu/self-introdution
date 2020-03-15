class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :toggle_status, :destroy, :update]
  def index
    @posts = Post.published.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    
  end

  def edit

  end

  def update
    @post.update(post_params)
    redirect_to users_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to users_path
  end

  def destroy
    @post.destroy
    redirect_to users_path
  end

  def toggle_status
    @post.toggle_status!
    redirect_to users_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :content, :title_image, :status).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id] || params[:post_id])
  end

end
