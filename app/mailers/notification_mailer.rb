class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.notification.subject
  #
  def notification
    @user = params[:user] # Instance variable => available in view
    @new_notification = params[:new_notification]
    mail(to: @user.email, subject: "New scholarship notification: #{@new_notification.scholarship.name}, from #{@new_notification.scholarship.institution.name}." )
    # This will render a view in `app/views/user_mailer`!
  end
end
