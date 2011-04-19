Rails.application.routes.draw do
  namespace :admin do
    get 'shop_socially' => 'shop_socially#index'
    put 'update_shop_socially'=> 'shop_socially#update'
  end
end
