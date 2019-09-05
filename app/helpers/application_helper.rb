module ApplicationHelper
  def unread_notifications?
    !Alert.last.notifications.find_by(status: "unread").nil?
  end
end
