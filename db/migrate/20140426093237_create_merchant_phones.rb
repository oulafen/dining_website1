class CreateMerchantPhones < ActiveRecord::Migration
  def change
    create_table :merchant_phones do |t|
      t.string :user_id
      t.string :phone

      t.timestamps
    end
  end
end
