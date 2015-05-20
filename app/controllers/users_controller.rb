class UsersController < ApplicationController
	before_action :authenticate_user!
	def redirect
		if current_user
			redirect_to home_path
		else 
			redirect_to new_user_session_path
		end
	end

	def index_courses
		@schools = School.where(user_id:current_user.id)
	end

	def home
		@user_name = current_user.email
	end
end
