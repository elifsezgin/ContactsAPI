class AddUsernameToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string

    add_column :users, :timestamps
  end
end
