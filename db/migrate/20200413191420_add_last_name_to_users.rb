class AddLastNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    rename_column :users, :user_email, :email
    rename_column :users, :user_password, :password_digest
    rename_column :users, :user_name, :first_name
    add_timestamps :users
  end
end
