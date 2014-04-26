class Add < ActiveRecord::Migration
  def change
    #remove_column :merchants, :token, :string
    add_column :merchants, :login_type, :string, :default=>'user'
    add_column :merchants, :password, :string

  end
end
