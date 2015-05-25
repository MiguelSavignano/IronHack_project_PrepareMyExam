class UsersController < ApplicationController
	before_action :authenticate_user!

	def redirect
		if current_user
			redirect_to home_path
		else 
			redirect_to new_user_session_path
		end
	end

	def generate_exams
		s = School.where(user_id:1).first
		s_attributes = s.attributes.except!("id","created_at","updated_at","user_id")
		new_school = School.new(s_attributes)
		current_user.schools << new_school
		redirect_to schools_path
	end

	def index_exams
		@subjects = current_user.subjects
	end

	def index_subjects
		@subjects = current_user.subjects
	end

	def home
		@user_name = current_user.email
	end
end
