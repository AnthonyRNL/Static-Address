class PostsController < ApplicationController
  layout 'application'
	
	def index
    @posts = Post.all
	end
	
	def new
		@post = Post.new
	end

end
