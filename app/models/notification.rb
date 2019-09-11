class Notification < ApplicationRecord
  belongs_to :alert
  belongs_to :scholarship
  validates :status, presence: true

  after_save :add_count
  after_save :send_notification_email
  after_update :add_count
  def add_count
    puts "adding count"
    saved_notification = self
    puts "saved notification has id #{self.id}"
    alert_from_notification = saved_notification.alert

    alert_from_notification.notif_count = alert_from_notification.notifications.count

    alert_from_notification.unread_notif_count = alert_from_notification.notifications.where(status: "unread").distinct.count(:scholarship_id)

    alert_from_notification.save

    puts "added #{alert_from_notification.notifications.count} notification on alert #{self.alert.id}. Alert notifications were #{alert_from_notification.notif_count}"
  end

  def send_notification_email
    puts "Preparing to send notification email"
    user = User.first
    new_notification = self
    NotificationMailer.with(user: user, new_notification: new_notification).notification.deliver_now
    puts "Notification email sent to #{user.email}."
  end
end
