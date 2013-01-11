module Spree::NotificationBanner; end

module SpreeNotificationBanner
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_notification_banner'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.active_shipping.preferences", :before => :load_config_initializers do |app|
      Spree::NotificationBanner::Config = Spree::NotificationBannerConfiguration.new
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
