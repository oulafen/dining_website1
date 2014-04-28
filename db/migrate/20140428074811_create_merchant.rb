class CreateMerchant < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string   :user_name
      t.string   :restaurant_name
      t.string   :login_type,      :default=> "user"
      t.string   :password_digest
      t.string   :remark
      t.string   :addr
      t.string   :phone
      t.string   :logo
      t.string   :label
      t.timestamps
    end
  end
end
