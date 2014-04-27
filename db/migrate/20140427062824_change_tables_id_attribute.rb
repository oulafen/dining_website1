class ChangeTablesIdAttribute < ActiveRecord::Migration
  def change
    remove_column :merchant_phones, :user_id, :string
    remove_column :merchant_phones, :phone, :string
    remove_column :merchant_addrs, :user_id, :string
    remove_column :merchant_lables, :user_id, :string

    add_column :merchant_phones, :user_id, :integer
    add_column :merchant_phones, :phone, :integer
    add_column :merchant_addrs, :user_id, :integer
    add_column :merchant_lables, :user_id, :integer

  end
end
