class MerchantPhone < ActiveRecord::Base

  belongs_to :merchant, :class_name => "Merchant"

end
