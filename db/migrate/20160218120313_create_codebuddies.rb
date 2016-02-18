class CreateCodebuddies < ActiveRecord::Migration
  def change
    create_table :codebuddies do |t|
      t.integer :user_id
      t.integer :buddy_id
      t.timestamps null: false
    end
  end
end
