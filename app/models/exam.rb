class Exam < ActiveRecord::Base
	belongs_to :subject
	has_and_belongs_to_many :themes
	has_many :study_sessions
 	has_many :notes , through: :themes

	def sum_themes
		self.themes.sum(:minutes)
	end

	def days_before
		(self.date - Date.today).to_i
	end

	def study_percent(current_user)
		self.sum_study_sessions(current_user)*100 / self.sum_themes
	end
	
	def sum_study_sessions(current_user)
		study_sessions = StudySession.where(user:current_user,exam:self)
		study_sessions.sum(:minutes)
	end

	def notes_user(current_user)
	    self.notes.where(user:current_user).order(:theme_id)
	end

	def notes_public(current_user)
		self.notes.where("user_id != ? and public = ?", current_user.id , true).order(:rate,:theme_id)
	end

	def themes_array_for_select
		self.themes.map { |theme| [theme.description, theme.id] }
	end
end

