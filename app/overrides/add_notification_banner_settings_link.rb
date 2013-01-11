Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "add_notification_banner_settings_link",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<tr>
      <td><%= link_to \"Notification Banner\", admin_notification_banner_settings_path %></td>
      <td><%= \"Configure Notification Banner Settings\" %></td>
      </tr>")
