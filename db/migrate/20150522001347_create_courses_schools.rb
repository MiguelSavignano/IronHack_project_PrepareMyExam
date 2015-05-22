class CreateCoursesSchools < ActiveRecord::Migration
  def change
  	create_table :courses_schools, id: false do |t|
      t.belongs_to :school, index: true
      t.belongs_to :course, index: true
    end
  end
end
