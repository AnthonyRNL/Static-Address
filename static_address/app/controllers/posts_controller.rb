class PostsController < ApplicationController
  layout 'application'
	
	def index
    @posts = Post.all
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def create
		@post = Post.create({title: params[:title], content: params[:content], soundfile: params[:soundfile]})
		redirect_to '/posts/'+@post[:id].to_s
	end
	
	def new
		@post = Post.new
	end

end
