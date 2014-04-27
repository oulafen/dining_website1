class ChangePassword < ActiveRecord::Migration
  def change
    remove_column :merchants, :digest, :string
    add_column :merchants, :password_digest, :string
  end
end
