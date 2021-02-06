class FeedBackMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feed_back_mailer.query_mail.subject
  #
  def query_mail
    @greeting = "Hi"

    mail to: "riyasyacub@gmail.com"
  end
end
