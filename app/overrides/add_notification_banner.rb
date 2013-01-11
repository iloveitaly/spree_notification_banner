Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "add_notification_banner",
                     :insert_top => "body",
                     :sequence => 200,
                     :partial => "spree/shared/notification_banner",
                     :disabled => false)
