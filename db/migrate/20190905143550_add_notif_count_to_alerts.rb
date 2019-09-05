class AddNotifCountToAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :notif_count, :integer
  end
end
