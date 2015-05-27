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
	@study_sessions.reduce(0){|sum,study_session|sum+study_session.minutes}
end

def days_before
	(self.date - Date.today).to_i
end

def study_percent(current_user)
	self.sum_study_sessions(current_user)*100 / self.sum_themes
end

end

