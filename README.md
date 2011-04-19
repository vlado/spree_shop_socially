SpreeShopSocially
=================

This is [Spree](http://spreecommerce.com) extension for [ShopSocially](http://shopsocial.ly).


Install
-------

Start by adding the gem to your existing Rails 3.x application's Gemfile
  
    gem 'spree_shop_socially', :git => 'git://github.com/vlado/spree_shop_socially.git'
  
Update your bundle

    bundle install
  
Now open "ShopSocially" tab in your admin area and enter your ShopSocially Account ID

![ShopSociallyTab](https://github.com/vlado/spree_shop_socially/raw/master/examples/shop_socially_tab.png)

Enjoy :)

Usage
-----

By default ShopSocially code will be hooked to "order_details_total" and no action from your side is needed.

In case you've overwrote [_order_details.html.erb](https://github.com/spree/spree/blob/master/core/app/views/shared/_order_details.html.erb) partial and/or "order_details_total" hook is missing you can add ShopSocially code by adding

    <%= shop_socially_tags %>
  
to your order thank you page.

Example
-------

![ShopSociallyWindow](https://github.com/vlado/spree_shop_socially/raw/master/examples/thank_you.png)

Copyright (c) 2011 ShopSocially, released under the New BSD License
