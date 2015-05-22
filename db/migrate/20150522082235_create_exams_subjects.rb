class CreateExamsSubjects < ActiveRecord::Migration
  def change
    create_table :exams_subjects do |t|
      t.belongs_to :exam, index: true
      t.belongs_to :subject, index: true
    end
  end
end
