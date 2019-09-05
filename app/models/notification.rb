class Notification < ApplicationRecord
  belongs_to :alert
  validates :status, presence: true

  after_save :add_count
  def add_count
    puts "adding count"
    saved_notification = self
    puts "saved notification has id #{self.id}"
    alert_from_notification = saved_notification.alert

    alert_from_notification.notif_count = alert_from_notification.notifications.count

    alert_from_notification.save
    puts "added #{alert_from_notification.notifications.count} notification on alert #{self.alert.id}. Alert notifications were #{alert_from_notification.notif_count}"
  end
end
