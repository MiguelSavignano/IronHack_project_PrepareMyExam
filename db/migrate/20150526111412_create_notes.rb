class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :theme_id
      t.integer :user_id
      t.string :name
      t.string :attachment
      t.boolean :public, :default => false
      t.integer :rate, :default => 0
      t.timestamps null: false
    end
  end
end
