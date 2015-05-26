class Theme < ActiveRecord::Base
	belongs_to :subject
	has_many :study_sessions
	has_many :notes
	has_and_belongs_to_many :exams
end

