class Subject < ActiveRecord::Base
	belongs_to :course
	has_many :themes
	has_many :exams
end
