class AddEmailAndPasswordColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :text
    add_column :users, :password_digest, :string
  end
end
