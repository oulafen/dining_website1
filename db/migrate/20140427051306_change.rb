class Change < ActiveRecord::Migration
  def change
    remove_column :merchants, :password, :string
    add_column :merchants, :digest, :string
  end
end
