class PostsController < ApplicationController
  layout 'application'
	#before_action :logged_in_user, only: [:create, :destroy, :update]
	
	
	def index
    @posts = Post.all
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def create
		current_user = current_user || User.find(1)
		puts current_user
		#fills in the user_id portion of the post_params which is needed.
		@post = current_user.posts.create(post_params)
		redirect_to '/posts/'+@post[:id].to_s
	end
	
	def new
		@post = Post.new
	end
	
	private
	
	def post_params
		params.require(:post).permit(:title, :content, :soundfile)
	end

end
