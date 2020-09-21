class PostsController < ApplicationController
  before_action :find_post, only: [:update, :show, :edit]
  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    if post.valid?
      redirect_to post_path(post)
    else
      flash[:errors] = post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path
      
    end
  end

  def show
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :destination_id, :blogger_id)
  end
end
