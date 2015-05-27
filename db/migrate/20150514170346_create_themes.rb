class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.belongs_to :subject, index: true	
      t.integer :minutes
      t.text :description
      t.integer :number_chapter
      t.timestamps null: false
    end
  end
end
