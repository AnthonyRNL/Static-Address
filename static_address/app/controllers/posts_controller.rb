class PostsController < ApplicationController
  before_action :authenticate

  def index
    if params[:user_id]
      @posts = Post.where({user_id: params[:user_id]})
    else
      @posts = Post.all
    end
	end

	def new
		@post = Post.new
	end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id, :upvote)
  end

end
