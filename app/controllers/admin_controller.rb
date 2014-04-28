class AdminController < ApplicationController
  require 'will_paginate/array'

  def admin_index
    merchant = Merchant.find_by_id(session[:user_id])
    if merchant[:login_type] == 'admin'
      @merchant = reconstruct_merchant_info.paginate :page => params[:page], :per_page => 10
    else
      redirect_to :login
    end
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

  def save_modify_merchant_id
    session[:modify_merchant_id] = Merchant.find_by_user_name(params[:user_name]).id
    redirect_to :modify_merchant_info
  end

  def modify_merchant_info
    @merchant = Merchant.find_by_id(session[:modify_merchant_id])
  end

  def update_merchant_info
    judge_input = judge_input(params[:merchant])
    if judge_input == 'legal'
      @merchant = Merchant.find_by_id(session[:modify_merchant_id])
      @merchant.restaurant_name=params[:merchant][:restaurant_name]
      @merchant.password = params[:merchant][:password]
      @merchant.password_confirmation = params[:merchant][:password_confirmation]
      @merchant.save
      render :modify_merchant_info
    end
  end

  def judge_input(merchant)
    @merchant = Merchant.find_by_id(session[:modify_merchant_id])
    if merchant[:restaurant_name] == '' || merchant[:password] == '' || merchant[:password_confirmation]==''
      flash.now[:error] = '输入不能为空'
      return render :modify_merchant_info
    end
    if merchant[:password] != merchant[:password_confirmation]
      flash.now[:error] = '两次密码输入不一致'
      return render :modify_merchant_info
    end
    'legal'
  end


  def delete_merchant
    Merchant.find_by_user_name(params[:user_name]).delete
    redirect_to :admin_index
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
