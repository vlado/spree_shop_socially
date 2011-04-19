class Admin::ShopSociallyController < Admin::BaseController
  
  def index
  end
  
  def update
    params[:preferences].each do |key,value|
      Spree::Config.set(key => value)
    end
    redirect_to(admin_shop_socially_path)
  end
  
end