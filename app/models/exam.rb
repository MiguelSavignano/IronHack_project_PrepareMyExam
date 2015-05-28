class Exam < ActiveRecord::Base

	has_many :study_sessions
	has_and_belongs_to_many :themes
	belongs_to :subject
	has_and_belongs_to_many :users


def sum_themes
	self.themes.reduce(0){|sum,theme|sum+theme.minutes}
end

def sum_study_sessions(current_user)
	@study_sessions = 	StudySession.where(user:current_user,exam:self)
	@study_sessions.sum(:minutes)
end

def days_before
	(self.date - Date.today).to_i
end

def study_percent(current_user)
	self.sum_study_sessions(current_user)*100 / self.sum_themes
end

def notes_user(current_user)
    self.themes.map(&:notes).flatten.select{|note| note.user_id == current_user.id}
end

def notes_public(current_user)
    self.themes.map(&:notes).flatten.select{|note| note.user_id != current_user.id && note.public }
end

def themes_array
	self.themes.map { |theme| [theme.description, theme.id] }
end
end

