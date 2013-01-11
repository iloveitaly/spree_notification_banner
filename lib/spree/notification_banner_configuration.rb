class Spree::NotificationBannerConfiguration < Spree::Preferences::Configuration
  preference :description, :string, :default => ""
  preference :link, :string, :default => ""
end