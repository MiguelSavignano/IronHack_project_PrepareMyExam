class Theme < ActiveRecord::Base
	belongs_to :subject
	has_many :study_sessions
	has_many :notes
	has_and_belongs_to_many :exams

	def notes_user(current_user)
		self.notes.select{|note| note.user_id == current_user.id }
	end

	def notes_public(current_user)
		self.notes.select{|note| note.user_id != current_user.id && note.public}
	end
end
