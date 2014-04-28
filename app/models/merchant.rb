class Merchant < ActiveRecord::Base
  has_secure_password
  validates :user_name , :presence => true, :uniqueness => {:case_sensitive => false}
  validates :restaurant_name , :presence => true

  attr_accessible :user_name, :restaurant_name, :password, :password_confirmation, :login_type, :addr, :phone, :logo, :remark
  has_many :merchant_addrs, :class_name=>'MerchantAddr',:foreign_key=>'user_id'
  has_many :merchant_phones, :class_name=>'MerchantPhone',:foreign_key=>'user_id'
  has_many :merchant_labels, :class_name=>'MerchantLabel',:foreign_key=>'user_id'

end
