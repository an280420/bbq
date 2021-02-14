class EventMailer < ApplicationMailer
  default from: ENV['MAILJET_SENDER']

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event
    # Берём у юзер его email
    mail to: event.user.email, subject: default_i18n_subject(title: event.title)
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: default_i18n_subject(title: event.title)
  end

  def photo(event, photo, email)
    @event = event
    @photo = photo

    mail to: email, subject: default_i18n_subject(title: event.title)
  end
end
