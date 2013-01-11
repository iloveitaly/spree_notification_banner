class Spree::Admin::NotificationBannerSettingsController < Spree::Admin::BaseController

  def show
    @config = Spree::NotificationBannerConfiguration.new
  end

  def edit
    @config = Spree::NotificationBannerConfiguration.new
  end

  def update
    config = Spree::NotificationBannerConfiguration.new

    params.each do |name, value|
      next unless config.has_preference? name
      config[name] = value
    end

    redirect_to admin_notification_banner_settings_path
  end

end


