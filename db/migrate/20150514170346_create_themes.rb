class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :minutes
      t.text :description
      t.timestamps null: false
    end
  end
end
