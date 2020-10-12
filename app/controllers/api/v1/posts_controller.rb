class Api::V1::PostsController < ApplicationController

  # before_action :authorized, only[:create]

def index
  posts = Post.all
  render json: posts
end

def create
  @post = Post.create(post_params)
  if @post.valid?
    render json: @post

  else
    render json: { error: 'failed to add new Post' }, status: :not_acceptable
  end
end

private

def post_params
  params.require(:post).permit(:title, :content, :user_id)

end
end

