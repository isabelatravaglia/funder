# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/notification
  def notification
    user = User.first
    new_notification = user.notifications.where(status:"unread").last
    NotificationMailer.with(user: user, new_notification: new_notification).notification.deliver_now
  end

end
