class Merchant < ActiveRecord::Base
  has_secure_password
  validates :user_name , :presence => true, :uniqueness => {:case_sensitive => false}
  validates :restaurant_name , :presence => true

  attr_accessible :user_name, :restaurant_name, :password, :password_confirmation, :login_type
  #has_many
end
