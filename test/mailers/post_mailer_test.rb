require 'test_helper'

class PostMailerTest < ActionMailer::TestCase
  test "post_published" do
    mail = PostMailer.post_published
    assert_equal "Post published", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "youve_been_tagged" do
    mail = PostMailer.youve_been_tagged
    assert_equal "You've been tagged", mail.subject
    assert_equal ["to@example.org"], mail_to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "response_received" do
    mail = CommentMailer.response_received
    assert_equal "Response received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
