Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :notification_banner_settings, :only => ['show', 'update', 'edit']
  end
end
