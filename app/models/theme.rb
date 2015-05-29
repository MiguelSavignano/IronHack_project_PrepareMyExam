class Theme < ActiveRecord::Base
	belongs_to :subject
	has_many :study_sessions
	has_many :notes
	has_and_belongs_to_many :exams

	def notes_user(current_user)
		self.notes.where(user:current_user).order(:theme_id)
	end

	def notes_public(current_user)
		self.notes.where("user_id != ? and public = ?", current_user.id , true).order(:rate,:theme_id)
	end
end
