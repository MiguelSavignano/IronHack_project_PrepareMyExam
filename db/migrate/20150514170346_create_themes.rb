class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :subject_id
      t.integer :minutes
      t.text :description
      t.integer :number_chapter
      t.timestamps null: false
    end
  end
end
