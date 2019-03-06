class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false, index: true 
      t.references :likeable, polymorphic: true, index: true
      t.timestamps
    end

    
  end
end
