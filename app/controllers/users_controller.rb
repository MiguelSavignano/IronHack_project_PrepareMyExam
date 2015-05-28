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
	end

	def index_exams
		@subjects = current_user.subjects
	end

	def index_subjects
		@subjects = current_user.subjects
	end

	def home
		@user_name = current_user.email
		@first_exam = current_user.first_exam
		@study_sessions = current_user.study_sessions.order(:date)
		@study_percent = @first_exam.study_percent(current_user)
	end
end
