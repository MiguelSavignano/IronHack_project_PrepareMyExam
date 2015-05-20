class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :name
      t.string :website	
      t.timestamps null: false
    end
  end
end
