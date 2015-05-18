class Exam < ActiveRecord::Base
	belongs_to :subject
	has_many :themes
end
