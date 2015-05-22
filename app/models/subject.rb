class Subject < ActiveRecord::Base
	has_and_belongs_to_many :courses
	has_and_belongs_to_many :exams
	has_many :themes
end
