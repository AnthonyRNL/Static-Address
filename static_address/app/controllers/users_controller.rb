class UsersController < ApplicationController
  def create
		@user = User.create(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to posts_path
		else
			render template: "sessions/new"
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end