class Subject < ActiveRecord::Base
	belongs_to :course
	has_and_belongs_to_many :users
	has_many :exams
	has_many :themes
end
