class NotificationMailerController < ApplicationController
    def send_email
      recipient_email = params[:email]
      NotificationMailer.send_notification(recipient_email).deliver!
      flash[:success] = "Email sent!"
      redirect_to root_path
    end
  end
  