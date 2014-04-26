class CreateMerchantAddrs < ActiveRecord::Migration
  def change
    create_table :merchant_addrs do |t|
      t.string :user_id
      t.string :addr

      t.timestamps
    end
  end
end
