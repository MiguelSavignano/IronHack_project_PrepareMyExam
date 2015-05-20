class CreateStudySessions < ActiveRecord::Migration
  def change
    create_table :study_sessions do |t|
      t.date :date
      t.integer :exam_id
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
