class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def current_user
		User.find(session[:user]) if session[:user]
	end

	def authenticate
		unless current_user.present?
			redirect_to login_path
		end
	end
	
	def logged_in_user
		unless logged_in?
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end

	def logged_in?
		!current_user.nil?
	end
end
