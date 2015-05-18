class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :course_id
      t.integer :school_year
      t.string :description
      t.string :teacher
      t.integer :season
        
      t.timestamps null: false
    end
  end
end
