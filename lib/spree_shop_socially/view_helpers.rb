module SpreeShopSocially
  module ViewHelpers
    
    def shop_socially_tags
      if Spree::Config[:shop_socially_enabled] and @order and @order.completed? and Time.now < @order.completed_at+3.minutes
        ss_init = { :partner_id => Spree::Config[:shop_socially_id].to_s }
        ss_init[:sandbox] = true unless Rails.env.production?
        %{
          <div id="ssFrame"></div>
          <script language="javascript" type="text/javascript" src="https://shopsocial.ly/js/all.js"></script>
          <script language="javascript" type="text/javascript">
            ss_mi.init(#{ss_init.to_json});
            ss_mi.add_products(#{@order.products_for_shop_socially.to_json.html_safe});
            ss_mi.load_ssFrame({div_id: 'ssFrame'});
          </script>
        }.html_safe
      end
    end
    
  end
end