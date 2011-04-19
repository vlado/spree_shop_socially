class SpreeShopSociallyHooks < Spree::ThemeSupport::HookListener
  
  insert_after :order_details_total do
    "<tr><td><%= shop_socially_tags %></td></tr>"
  end
  
  insert_after :admin_tabs do
    "<%= tab(:shop_socially) %>"
  end
  
end