require 'spree_core'
require 'spree_shop_socially_hooks'

module SpreeShopSocially
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "/spree_shop_socially/*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      ActionView::Base.send(:include, SpreeShopSocially::ViewHelpers)
    end

    config.to_prepare &method(:activate).to_proc
  end
end
