class UsersController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "password", except: [:new, :show, :create]

	def index
		@users = User.all
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id 
			redirect_to '/articles'
		else
			flash[:register_errors] = user.errors.full_messages
			redirect_to '/'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end