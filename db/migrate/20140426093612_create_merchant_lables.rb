class CreateMerchantLables < ActiveRecord::Migration
  def change
    create_table :merchant_lables do |t|
      t.string :user_id
      t.integer :lable_id

      t.timestamps
    end
  end
end
