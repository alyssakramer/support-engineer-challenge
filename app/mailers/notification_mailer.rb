class NotificationMailer < ApplicationMailer
  def send_notification(email)
    mail(to: email, subject: 'Button Clicked')
  end
end
