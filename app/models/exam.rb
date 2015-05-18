class Exam < ActiveRecord::Base
	has_many :exam_themes
	has_many :themes, through: :exam_themes
end
