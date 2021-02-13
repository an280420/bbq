class EventMailer < ApplicationMailer
  default from: ENV['MAILJET_SENDER']

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event
    # Берём у юзер его email
    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: "Новый комментарий @ #{event.title}"
  end
end
