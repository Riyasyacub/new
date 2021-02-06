# Preview all emails at http://localhost:3000/rails/mailers/feed_back_mailer
class FeedBackMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feed_back_mailer/query_mail
  def query_mail
    FeedBackMailer.query_mail
  end

end
