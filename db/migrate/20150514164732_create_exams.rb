class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :subject_id	
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
