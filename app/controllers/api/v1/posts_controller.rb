class Api::V1::PostsController < ApplicationController

  before_action :authorized, only: [:create]

  def index
    posts = Post.all
    render json: posts
  end

  def create    
    @post = Post.new(post_params)
    if @post.valid?
      render json: @post

    else
      render json: { error: 'failed to add new post' }, status: :not_acceptable
    end
  end

  def update
    
    post = Post.find(params[:id])
      if post.update(post_params)
        render json: post 

      else
        render 'edit'
      end
  end

  def destroy
    
    post = Post.find(params[:id])
    post.destroy

    render json: {message: 'The stock has been removed!'}

  end
  
  

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end

