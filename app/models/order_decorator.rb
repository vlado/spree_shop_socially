Order.class_eval do
  
  def products_for_shop_socially
    domain_with_protocol = "http://#{Spree::Config[:site_url]}"
    self.line_items.map do |item|
      p = item.variant.product
      i = p.images.first
      {
        :prod_page_url => "#{domain_with_protocol}/products/#{p.permalink}",
        :prod_img_url => i ? "#{domain_with_protocol}#{i.attachment.url(:small)}" : "",
        :prod_title => p.name,
        :prod_currency => I18n.t("number.currency.format.unit"),
        :prod_price => item.price
      }
    end
  end
  
end