class MerchantController < ApplicationController

  def login

  end

  def logout
    reset_session
    redirect_to :login
  end

  def create_login_session
    merchant = Merchant.find_by_user_name(params[:user][:user_name])
    if merchant.nil? || !merchant.authenticate(params[:user][:password])
      flash.now[:error] = '用户名或密码错误'
      render :login
    end
    if merchant && merchant.authenticate(params[:user][:password])
      session[:current_merchant] = merchant
      redirect_to merchant.login_type=='user' ? :merchant_index : :admin_index
    end
  end

  def merchant_index
    if session[:current_merchant][:login_type] == 'user'
      @restaurant_name = session[:current_merchant][:restaurant_name]
    else
      redirect_to :login
    end
  end


end
