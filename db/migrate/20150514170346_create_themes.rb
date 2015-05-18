class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :subject_id
      t.text :content
      t.integer :minutes
      t.timestamps null: false
    end
  end
end
