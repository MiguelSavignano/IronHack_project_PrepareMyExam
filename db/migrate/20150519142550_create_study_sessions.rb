class CreateStudySessions < ActiveRecord::Migration
  def change
    create_table :study_sessions do |t|
      t.date :date
      t.integer :exam_id
      t.integer :theme_id
      t.integer :user_id
      t.integer :minutes, :default => 0
      t.timestamps null: false
    end
  end
end
