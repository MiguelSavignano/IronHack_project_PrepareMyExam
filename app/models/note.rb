class Note < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	belongs_to :theme
	belongs_to :user

	def self.get_notes(exam_id,current_user)
		exam = Exam.find(exam_id)
	    themes_note = exam.themes.map{|theme| theme.notes}
	    notes = themes_note.flatten
	    notes_user = notes.select{|n|n.user == current_user }
	    notes_public = notes - notes_user
	    return notes_user, notes_public
	end
end
