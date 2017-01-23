require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "enquiry_approved_mailer" do
    mail = ModelMailer.enquiry_approved_mailer
    assert_equal "Enquiry approved mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
