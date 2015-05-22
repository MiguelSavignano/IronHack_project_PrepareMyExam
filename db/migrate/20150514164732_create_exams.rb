class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
