require 'test_helper'

class FeedBackMailerTest < ActionMailer::TestCase
  test "query_mail" do
    mail = FeedBackMailer.query_mail
    assert_equal "Query mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
