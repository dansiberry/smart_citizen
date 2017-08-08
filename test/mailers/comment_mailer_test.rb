require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase
  test "response_received" do
    mail = CommentMailer.response_received
    assert_equal "Response received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
