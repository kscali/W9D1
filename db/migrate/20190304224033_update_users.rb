class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    
    # remove_column :users, :email
    # rename_column :users, :name, :username, null: false, uniqueness: true

    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string, null: false, uniqueness: true
    
  end
end
