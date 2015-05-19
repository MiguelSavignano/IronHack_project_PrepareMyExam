class CreateExamThemes < ActiveRecord::Migration
  def change
    create_table :exam_themes do |t|
      t.integer :subject_id
      t.integer :exam_id
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
