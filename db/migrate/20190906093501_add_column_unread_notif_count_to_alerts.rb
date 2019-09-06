class AddColumnUnreadNotifCountToAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :unread_notif_count, :integer
  end
end
