class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.belongs_to :subject, index: true	
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
