class AdminController < ApplicationController
  require 'will_paginate/array'

  def admin_index
    @merchant = reconstruct_merchant_info.paginate :page => params[:page], :per_page => 10
  end

  def add_new_merchant
    @merchant = Merchant.new
  end

  def save_new_merchant
    @merchant=Merchant.new(params[:merchant])
    @merchant.save
    if @merchant.save
      redirect_to :admin_index
    else
      render :add_new_merchant
    end
  end

  def reconstruct_merchant_info
    users=[]
    merchant = Merchant.where(:login_type => 'user')
    merchant.each do |m|
      user = {}
      temp_phone = MerchantPhone.find_by_user_id(m.id)
      user[:phone] = ''
      if temp_phone
        user[:phone]=temp_phone[:phone]
      end
      user[:restaurant_name] = m.restaurant_name
      user[:user_name] = m.user_name
      users.push(user)
    end
    users
  end

end
