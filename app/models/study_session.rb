class StudySession < ActiveRecord::Base
	belongs_to :exam
	belongs_to :user
	belongs_to :theme
end
