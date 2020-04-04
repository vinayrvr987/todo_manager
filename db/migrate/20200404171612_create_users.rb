class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :User_name
      t.text :User_email
      t.text :User_password
    end
  end
end
