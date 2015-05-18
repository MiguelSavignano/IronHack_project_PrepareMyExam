class CreateStudySessions < ActiveRecord::Migration
  def change
    create_table :study_sessions do |t|
      t.integer :duration
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
