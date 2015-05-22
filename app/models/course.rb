class Course < ActiveRecord::Base
	has_many :subjects
	has_and_belongs_to_many :schools
end
